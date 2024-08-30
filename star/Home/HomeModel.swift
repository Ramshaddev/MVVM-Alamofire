//
//  HomeModel.swift
//  star
//
//  Created by artmac on 28/08/24.
//

import Foundation

struct HomeModel: Codable{
    let homeData: HomeData?
    let status: String?
    let message: String?
    let result: Bool?
    
    enum CodingKeys: String, CodingKey {
        case homeData = "data"
        case status
        case message
        case result
    }
    
}

struct HomeData: Codable{
    let topCat: [TopCat]?
    let banner: [Banner]?
    let products : [Products]?
}

struct TopCat: Codable{
    let catId: String?
    let name: String?
    let photo: String?
    enum CodingKeys: String, CodingKey {
        case catId = "cat_id"
        case name = "cat_name"
        case photo
    }
}

struct Banner: Codable{
    let photo: String?
    enum CodingKeys: CodingKey {
        case photo
    }
}

struct Products: Codable{
    let id: String?
    let name: String?
    let brand: String?
    let price: String?
    let photo: String?
    let wishListStatus: Bool?
    
    enum CodingKeys: String, CodingKey {
        case id = "p_id"
        case name = "p_name"
        case brand = "p_brand_name"
        case price = "p_current_price"
        case photo
        case wishListStatus = "wishlist_status"
    }
}

