//
//  URL+Extension.swift
//  GEILdesignt_Shop
//
//  Created by Timo Schönbeck on 01.03.23.
//

import Foundation

extension URL {
    
    static func forSellablesURL(_ name: String) -> URL? {
        return URL(string: "\(Constants.BASE_URL)")
    }
    
}
