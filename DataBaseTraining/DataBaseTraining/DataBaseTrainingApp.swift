//
//  DataBaseTrainingApp.swift
//  DataBaseTraining
//
//  Created by Timo Schönbeck on 01.02.23.
//

import SwiftUI

@main
struct DataBaseTrainingApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(trainingsCoreDM: TrainingCoreDataManager())
        }
    }
}
