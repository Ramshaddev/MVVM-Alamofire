//
//  ApiService.swift
//  star
//
//  Created by artmac on 28/08/24.
//

import Foundation
class ApiService{
    private let apiClient: ApiClient
    
    init(apiClient: ApiClient) {
        self.apiClient = apiClient
    }
    
    func getHomeAPi(completion: @escaping (Result<HomeModel, ApiError>)->Void){
        apiClient.request(endpoint: Endpoint.home.stringValue, completion: completion)
    }
}
