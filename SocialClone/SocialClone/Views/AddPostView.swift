//
//  AddPostView.swift
//  SocialClone
//
//  Created by Timo Schönbeck on 30.01.23.
//

import SwiftUI

struct AddPostView: View {
    
    @State var content: String
    @State var comment: [Comment] = []
    @State var upVotes: Int
    @State var downVotes: Int
    @State var author: String
    
    
    var body: some View {
        Text("ADD POST!!!")
        PostRowView(post: Post(content: content, comments: [Comment(text: "Comment Text is here", author: "Test Author Comments")], upvotes: upVotes, downvotes: downVotes, author: author))
    }
}

struct AddPostView_Previews: PreviewProvider {
    static var previews: some View {
        AddPostView(content: "Test Add Content", comment: [Comment(text: "Test Comment Preview", author: "Test Author Preview")], upVotes: 0, downVotes: 0, author: "test")
    }
}
