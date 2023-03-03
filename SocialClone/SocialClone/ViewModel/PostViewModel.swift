//
//  PostViewModel.swift
//  SocialClone
//
//  Created by Timo Schönbeck on 30.01.23.
//

import SwiftUI

class PostViewModel: ObservableObject {
    @Published var posts: [Post]
    @Published var comments: [Comment]
    
    init(posts: [Post] = [], comments: [Comment] = []) {
        self.posts = posts
        self.comments = comments
    }
    
    //: ADDS A POST
    func addPost(post: Post){
        self.posts.append(post)
        
    }
    
    //: ADDS A COMMENT
    func addComment(comment: Comment){
        self.comments.append(comment)
        
    }
    
    //: DELETE POST
    func deletePost(at index: Int) {
           posts.remove(at: index)
       }
    //: DELETE COMMENT
    func deleteComment(at index: Int) {
           comments.remove(at: index)
       }
    
    
}


