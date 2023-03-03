//
//  apiCallApp.swift
//  apiCall
//
//  Created by Timo Schönbeck on 10.02.23.
//

import SwiftUI

@main
struct apiCallApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
