//
//  MovieAppUsingFetchrequestApp.swift
//  MovieAppUsingFetchrequest
//
//  Created by Timo Schönbeck on 17.02.23.
//

import SwiftUI

@main
struct MovieAppUsingFetchrequestApp: App {
    
    @StateObject var coreDM = CoreDataManager.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, coreDM.viewContext)
        }
    }
}
