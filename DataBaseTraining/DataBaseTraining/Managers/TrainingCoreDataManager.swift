//
//  TrainingCoreDataManager.swift
//  DataBaseTraining
//
//  Created by Timo Schönbeck on 01.02.23.
//

import CoreData

class TrainingCoreDataManager {
    
    let persistentContainer: NSPersistentContainer
    
    // Initialisierung des Persistent Container, in dem Core Data gespeichert wird.
    init() {
        self.persistentContainer = NSPersistentContainer(name: "TrainingDataModel")
        
        // Laden des Persistent Stores, falls einer vorhanden ist.
        persistentContainer.loadPersistentStores{
            (description, error) in
            
            // Fehlerbehandlung, falls das Laden des Persistent Stores fehlschlägt.
            if let error {
                fatalError("Core Data Store failed to initialize \(error.localizedDescription)")
                
            }
        }
    }
    
    // Funktion zum Aktualisieren eines Movies (entsprechendes Core Data Object).
    func updateMovie(){
        
        do{
            // Versuch, Änderungen im Core Data Context zu speichern.
            try persistentContainer.viewContext.save()
        }catch{
            // Falls das Speichern fehlschlägt, werden die Änderungen rückgängig gemacht.
            persistentContainer.viewContext.rollback()
        }
        
    }
    
    // Funktion zum Löschen eines Movies (entsprechendes Core Data Object).
    func deleteMovie(movie: Movie){
        
        do {
            // Versuch, das Löschen des Objects im Core Data Context zu speichern.
            try persistentContainer.viewContext.save()
        }catch {
            // Falls das Speichern fehlschlägt, werden die Änderungen rückgängig gemacht.
            persistentContainer.viewContext.rollback()
            // Ausgabe einer Fehlermeldung
            print("failied to save context \(error.localizedDescription)")
        }
        
    }
    
    // Funktion zum Abrufen aller Movies (Core Data Objects)
    func getAllMovies() -> [Movie] {
        
        // Definition eines Fetch Requests zum Abrufen aller Movie Objects.
        let fetchRequest: NSFetchRequest<Movie> = Movie.fetchRequest()
        
        do{
            // Versuch, die Abfrage auszuführen und die Ergebnisse zurückzugeben.
            return try
            persistentContainer.viewContext.fetch(fetchRequest)
            
        }catch{
            // Falls die Abfrage fehlschlägt, wird ein leeres Array zurückgegeben.
            return []
            
        }
        
    }
    
    // Funktion zum Speichern eines neuen Movies (Core Data Object)
    func saveMovies(title: String){
        
        // Erzeugung eines neuen Movie Objects im Core Data
        let movie = Movie(context: persistentContainer.viewContext)
        movie.title = title
        
        
        
        do{
            try persistentContainer.viewContext.save()
            print("Movie saved!")
        }catch{
            print("Failed to save movie \(error)")
        }
        
        
    }
    
    
}
