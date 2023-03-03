//
//  ContentView.swift
//  SocialClone
//
//  Created by Timo Schönbeck on 30.01.23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = PostViewModel()
    
    var body: some View {
        NavigationView {
            PostListView(viewModel: viewModel)
                .navigationBarTitle("Social Media")
                .navigationBarItems(trailing:
                                        NavigationLink(destination:
                                                        
                                                        AddPostView(content: "Schreib ein Kommentar: ", upVotes: 10, downVotes: 2, author: "Martin ")
                                            .padding()
                                                      )
                                    
                                    {
                    Text("Post hinzufügen")
                    
                }
                )
                .padding()
        }//:NAVIGATIONVIEW
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
