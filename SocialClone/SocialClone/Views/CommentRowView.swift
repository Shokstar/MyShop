//
//  CommentRowView.swift
//  SocialClone
//
//  Created by Timo Schönbeck on 30.01.23.
//

import SwiftUI

struct CommentRowView: View {
    let comment: Comment

    var body: some View {
        VStack(alignment: .leading) {
            Text(comment.text)
            Text("Author: \(comment.author)")
        }
    }
}

struct CommentRowView_Previews: PreviewProvider {
    static var previews: some View {
        CommentRowView(comment: Comment(text: "Text", author: "Author"))
    }
}
