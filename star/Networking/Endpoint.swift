//
//  Endpoint.swift
//  star
//
//  Created by artmac on 29/08/24.
//

import Foundation

enum Endpoint{
    case home
    
    var stringValue: String{
        switch self{
        case .home:
            return "/api/home.php"
        }
    }
}
