//
//  PostListView.swift
//  SocialClone
//
//  Created by Timo Schönbeck on 30.01.23.
//

import SwiftUI

struct PostListView: View {
    @ObservedObject var viewModel: PostViewModel

    var body: some View {
        List {
            ForEach(viewModel.posts) { post in
                NavigationLink(destination: CommentListView(post: post)) {
                    PostRowView(post: post)
                }
            }
        }
    }
}
struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
       PostListView(viewModel: PostViewModel(posts: [Post(content: "Content", comments: [Comment(text: "Text", author: "Author")], upvotes: 0, downvotes: 0, author: "Author")]))
    }
}
