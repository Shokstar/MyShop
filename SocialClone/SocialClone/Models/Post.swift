//
//  Post.swift
//  SocialClone
//
//  Created by Timo Schönbeck on 30.01.23.
//

import SwiftUI

struct Post: Identifiable {
    var id = UUID()
    var content: String
    var comments: [Comment]
    var upvotes: Int
    var downvotes: Int
    var author: String
}
