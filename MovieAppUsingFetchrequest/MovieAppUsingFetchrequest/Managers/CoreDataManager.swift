//
//  CoreDataManager.swift
//  MovieAppUsingFetchrequest
//
//  Created by Timo Schönbeck on 17.02.23.
//

import Foundation
import CoreData


open class CoreDataManager: ObservableObject {
    
    let persistentContainer: NSPersistentContainer
    static let shared : CoreDataManager = CoreDataManager()
    
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    private init() {
        
        persistentContainer = NSPersistentContainer(name: "MovieAppModel")
        persistentContainer.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Failed to initialize Core Data \(error)")
            }
        }
    }
}
