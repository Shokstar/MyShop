//
//  PostRowView.swift
//  SocialClone
//
//  Created by Timo Schönbeck on 30.01.23.
//

import SwiftUI

struct PostRowView: View {
    @ObservedObject var viewModel = PostViewModel()
    
    @State var post: Post
    
    
    
    var body: some View {
        VStack(alignment: .center) {
            Text(post.content)
            Text("Author: \(post.author)")
            Text("Upvotes: \(post.upvotes) Downvotes: \(post.downvotes)")
            Text("Comments: \(post.comments.count)")
            
            
            Button
            TextField("Kommentar verfassen: ", text: $post.content)
                
            
            
        }
        
    }
}

struct PostRowView_Previews: PreviewProvider {
    static var previews: some View {
        PostRowView(post: Post(content: "Post: Content", comments: [Comment(text: "Comment: Text", author: "Comment: Author")], upvotes: 0, downvotes: 0, author: "Author"))
    }
}
