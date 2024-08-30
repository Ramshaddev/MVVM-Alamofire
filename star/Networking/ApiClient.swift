//
//  ApiClient.swift
//  star
//
//  Created by artmac on 28/08/24.
//

import Foundation
import Alamofire

enum BASE_URL{
    case production
    case development
    var value: String{
        switch self{
        case .development:
            return ApiCostants.developmentBaseUrl
        case .production:
            return ApiCostants.developmentBaseUrl
        }
    }
}

protocol ApiClientProtocol{
    func request<T: Decodable>(endpoint: String, method: HTTPMethod, header: HTTPHeaders?, parameter: Parameters?, encoding: ParameterEncoding?, completion: @escaping (Result<T, ApiError>)->Void)
}

class ApiClient: ApiClientProtocol{
    var Base_Url: BASE_URL
    init(Base_Url: BASE_URL) {
        self.Base_Url = Base_Url
    }
    func request<T: Decodable>(endpoint: String, method: HTTPMethod = .get, header: HTTPHeaders? = nil, parameter: Parameters? = nil, encoding: ParameterEncoding? = JSONEncoding.default, completion: @escaping (Result<T, ApiError>) -> Void) {
        
        guard ReachabilityHelper.isInternetAvailable else {
            return completion(.failure(ApiError.noNetwork))
        }
        
        guard let url = URL(string: Base_Url.value + endpoint) else{
            return completion(.failure(ApiError.invalidUrl))
        }
        
        AF.request(url, method: method, parameters: parameter, encoding: encoding ?? JSONEncoding.default, headers: header).validate().responseDecodable(of: T.self) { response in
            switch response.result{
            case .success:
                guard let data = response.data else{
                    return completion(.failure(ApiError.invalidUrl))
                }
                do{
                    let jsonDecoder = JSONDecoder()
                    let jsonData = try jsonDecoder.decode(T.self, from:data)
                    completion(.success(jsonData))
                }catch{
                    completion(.failure(ApiError.invalidUrl))
                }
            case .failure(let error):
                completion(.failure(ApiError.apiError(message: "Something went wrong..!")))
            }
        }
    }
    
    
}


