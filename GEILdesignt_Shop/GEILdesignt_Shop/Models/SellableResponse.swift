//
//  SellableResponse.swift
//  GEILdesignt_Shop
//
//  Created by Timo Schönbeck on 01.03.23.
//

import Foundation

struct SellableResponse: Codable {
    let count: Int
    let limit: Int
    let offset: Int?
    let sellables: [Sellable]
}
