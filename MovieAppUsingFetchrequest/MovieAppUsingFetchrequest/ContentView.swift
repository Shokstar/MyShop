//
//  ContentView.swift
//  MovieAppUsingFetchrequest
//
//  Created by Timo Schönbeck on 17.02.23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(entity: Movie.entity(), sortDescriptors: [NSSortDescriptor(key: "title", ascending: true)])
    var movies: FetchedResults<Movie>
    
    var body: some View {
        
        List(movies, id: \.self){ movie in
            Text(movie.title ?? "")
  
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, CoreDataManager.shared.viewContext)
    }
}
