//
//  Sellables.swift
//  GEILdesignt_Shop
//
//  Created by Timo Schönbeck on 01.03.23.
//

import Foundation

struct Sellable: Codable, Identifiable{
    var id = UUID()
    var sellableId: String // ID des verkaufbaren Produkts
    var ideaId: String // ID der Idee
    var mainDesignId: String // ID des Hauptdesigns
    var productTypeId: String // ID des Produkttyps
    var price: Price // Preis des Produkts
    var name: String // Name des Produkts
    var description: String // Beschreibung des Produkts
    var tags: [String] // Schlagwörter des Produkts
    var previewImage: PreviewImage // Vorschaubild des Produkts
    var appearanceIds: [String] // IDs der Designs
    var defaultAppearanceId: String // ID des Standarddesigns
}
