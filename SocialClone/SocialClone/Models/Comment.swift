//
//  Comment.swift
//  SocialClone
//
//  Created by Timo Schönbeck on 30.01.23.
//

import SwiftUI

struct Comment: Identifiable {
    var id = UUID()
    var text: String
    var author: String
}
