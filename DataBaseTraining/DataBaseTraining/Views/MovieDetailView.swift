//
//  MovieDetailView.swift
//  DataBaseTraining
//
//  Created by Timo Schönbeck on 06.02.23.
//

import SwiftUI

struct MovieDetailView: View {
    
    // Movie object to display in the view
    let movie: Movie
    
    // State variable to store the updated movie name
    @State private var movieName: String = ""
    
    // Reference to the TrainingCoreDataManager instance
    let trainingCDM: TrainingCoreDataManager
    
    // Binding variable to keep track of the changes and update the view
    @Binding var needsRefresh: Bool
    
    var body: some View {
        
        // Vertical Stack to hold the elements
        VStack{
            // TextField to display and update the movie name
            TextField(movie.title ?? "", text: $movieName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            // Button to save the updated movie name
            Button("Update") {
                if !movieName.isEmpty {
                    // Update the movie name in the movie object
                    movie.title = movieName
                    
                    // Call the update method in the TrainingCoreDataManager instance
                    trainingCDM.updateMovie()
                    
                    // Toggle the value of needsRefresh binding variable to refresh the view
                    needsRefresh.toggle()
                }
                
            }
            
        }//:VSTACK
        .padding()
        .frame(width: 250)
        .border(.orange)
   
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // Create an instance of TrainingCoreDataManager
        let trainingCDM = TrainingCoreDataManager()
        
        // Create an instance of Movie
        let movie = Movie(context: trainingCDM.persistentContainer.viewContext)
        
        // Return the MovieDetailView with the movie, trainingCDM, and needsRefresh variables
        return MovieDetailView(movie: movie, trainingCDM: trainingCDM, needsRefresh: .constant(false))
    }
}
