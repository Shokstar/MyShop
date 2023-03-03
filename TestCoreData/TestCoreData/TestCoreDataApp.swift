//
//  TestCoreDataApp.swift
//  TestCoreData
//
//  Created by Timo Schönbeck on 02.02.23.
//

import SwiftUI

@main
struct TestCoreDataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
