//
//  ApiErrorHelper.swift
//  star
//
//  Created by artmac on 29/08/24.
//

import Foundation
enum ApiError: Error{
    case noNetwork
    case invalidUrl
    case apiError(message: String)
    
    var message: String{
        switch self{
        case.apiError(message: let message):
            return message
        default:
            return "Something went wrong"
        }
    }
}
