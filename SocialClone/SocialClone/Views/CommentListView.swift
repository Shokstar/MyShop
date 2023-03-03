//
//  CommentListView.swift
//  SocialClone
//
//  Created by Timo Schönbeck on 30.01.23.
//

import SwiftUI


struct CommentListView: View {
    let post: Post
    
 

    var body: some View {
        List {
            ForEach(post.comments) { comment in
                CommentRowView(comment: comment)
            }
        }
    }
}

struct CommentListView_Previews: PreviewProvider {
    static var previews: some View {
        CommentListView(post: Post(content: "Content", comments: [Comment(text: "Text", author: "Author")], upvotes: 0, downvotes: 0, author: "Author"))
    }
}
