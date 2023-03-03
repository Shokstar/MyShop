//
//  GameViewModel.swift
//  Spielerei
//
//  Created by Timo Schönbeck on 28.01.23.
//

import SwiftUI

class GameViewModel: ObservableObject{
    @Published var gameViewModel : [GameViewModel] = []
    
    init() {
        self.gameViewModel
    }
    
}
