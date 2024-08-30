//
//  HomeViewModel.swift
//  star
//
//  Created by artmac on 28/08/24.
//

import Foundation

final class HomeViewModel{
    
    typealias homeCompletion = ((String)->Void)?
    private let apiManager = ApiManager.shared.apiService
    
    func loadHomeApi(){
        apiManager.getHomeAPi { response in
            print(response)
        }
    }
}
