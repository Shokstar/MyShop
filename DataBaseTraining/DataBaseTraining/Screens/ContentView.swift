//
//  ContentView.swift
//  DataBaseTraining
//
//  Created by Timo Schönbeck on 01.02.23.
//

import SwiftUI

struct ContentView: View {
    
    let trainingsCoreDM: TrainingCoreDataManager
    
    // State Property zur Verwaltung des Filmnamens
    @State private var movieName: String = ""
    // State Property zur Verwaltung der Filmliste
    @State private var movies: [Movie] = [Movie]()
    // State Property, um die Ansicht aktualisieren zu können
    @State private var needsRefresh: Bool = false
    
    // Funktion zum Populieren der Filmliste
    private func populateMovies(){
        // Filmliste wird aus CoreData geladen
        movies = trainingsCoreDM.getAllMovies()
        // Debug-Ausgabe der Filmtitel
        // print(movies[0].title!)
    }
    
    // Hauptteil der View
    var body: some View {
        NavigationView{
            VStack {
                // Textfeld zur Eingabe des Filmnamens
                TextField("Enter movie name", text: $movieName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // Button zum Speichern des Filmnamens
                Button("Save") {
                    // Speichern des Filmnamens über den TrainingCoreDataManager
                    trainingsCoreDM.saveMovies(title: movieName)
                    // Aktualisieren der Filmliste
                    populateMovies()
                }
                
                // Liste aller Filme
                List {
                    // ForEach-Schleife, um die Filme als NavigationLink darzustellen
                    ForEach(movies, id: \.self) { movie in
                        NavigationLink(destination:
                                        // Ziel-View mit Film-Detail-Informationen
                                       MovieDetailView(movie: movie, trainingCDM: trainingsCoreDM, needsRefresh: $needsRefresh),
                                       // Label-Text, in diesem Fall der Filmtitel
                                       label: {
                            Text(movie.title ?? "")
                        })
                    }
                    // Funktionalität zum Löschen von Filmen
                    .onDelete(perform: { indexSet in
                        indexSet.forEach { index in
                            let movie = movies[index]
                            // Löschen des Films über den TrainingCoreDataManager
                            trainingsCoreDM.deleteMovie(movie: movie)
                            // Aktualisieren der Filmliste
                            populateMovies()
                        }
                    })
                }//:LIST
                // Style-Eigenschaft für die Liste
                .listStyle(PlainListStyle())
                // Farb-Eigenschaft für den Hintergrund der Liste
                .accentColor(needsRefresh ? .white : .orange)
                
                // Abstandshalter
                Spacer()
            }//:VSTACK
            // Padding-Eigenschaft für den Rahmen der View
            .padding()
            // Funktionalität beim Erscheinen der View
            .onAppear(perform: {
                // Populieren der Filmliste
                populateMovies()
            })
        }//: NAVIGATION
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(trainingsCoreDM: TrainingCoreDataManager())
    }
}
