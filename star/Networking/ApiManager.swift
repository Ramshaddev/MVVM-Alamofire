//
//  ApiManager.swift
//  star
//
//  Created by artmac on 29/08/24.
//

import Foundation
class ApiManager{
    static let shared = ApiManager()
    
    private let apiClient: ApiClient
    let apiService: ApiService
    
    private init(){
        apiClient = ApiClient(Base_Url: .development)
        apiService = ApiService(apiClient: apiClient)
    }
}
