//
//  Constants.swift
//  GEILdesignt_Shop
//
//  Created by Timo Schönbeck on 01.03.23.
//

import Foundation

struct Constants {
    let sellables: Sellable
    
    init(sellables: Sellable) {
        self.sellables = sellables
    }
     
    
    static let API_KEY = "?SprdAuth%20apiKey=b1271341-2d14-468b-a6ed-d28ba13034c0"
    
    static let SECRET_KEY = "f2469a64-6535-40a0-8eea-8f604a7468fd"
    
    static let BASE_URL = "https://api.spreadshirt.net/api/v1/shops/100247767/sellables?page=0&SprdAuth%20apiKey=%22b1271341-2d14-468b-a6ed-d28ba13034c0%22"

    
    
}
