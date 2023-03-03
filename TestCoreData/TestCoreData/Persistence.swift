//
//  Persistence.swift
//  TestCoreData
//
//  Created by Timo Schönbeck on 02.02.23.
//

import CoreData

// Diese Struktur implementiert einen Persistenzcontroller, der Core Data verwendet.
struct PersistenceController {
    // shared ist eine statische Konstante, die eine Instanz des PersistenceController darstellt.
    static let shared = PersistenceController()

    // preview ist ebenfalls eine statische Variable, die eine Instanz des PersistenceController enthält,
    // die im Speicher erstellt wurde.
    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        // Fügt 10 Item-Objekte hinzu.
        for _ in 0..<10 {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
        }
        // Versucht, Änderungen in der Datenbank zu speichern.
        do {
            try viewContext.save()
        } catch {
            // Wirft eine Fehlermeldung, wenn das Speichern fehlschlägt.
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        // Gibt die instanz von PersistenceController zurück.
        return result
    }()

    // container ist eine Konstante, die eine NSPersistentContainer-Instanz enthält.
    let container: NSPersistentContainer

    // Initializer, der entweder eine persistente oder im Speicher gespeicherte Datenbank verwenden kann.
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "TestCoreData")
        // Überprüft, ob eine im Speicher gespeicherte Datenbank verwendet werden soll.
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        // Lädt die persistenten Stores.
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Wirft eine Fehlermeldung, wenn das Laden fehlschlägt.
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        // Konfiguriert die automatische Zusammenführung von Änderungen.
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
}
