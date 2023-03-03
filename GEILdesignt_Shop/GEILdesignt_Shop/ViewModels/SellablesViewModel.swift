//
//  SellablesViewModel.swift
//  GEILdesignt_Shop
//
//  Created by Timo Schönbeck on 01.03.23.
//

import Foundation
import Combine

// Dies ist die ViewModel-Klasse, die das Verhalten der Verkaufsbaren-Liste steuert.
class SellableListViewModel: ObservableObject {
    
    // Diese Variable wird beobachtet und aktualisiert die View bei Änderungen.
    //    @Published var sellable = [SellableViewModel]()
    @Published var sellables: [Sellable] = []
    @Published var isLoading = false
    @Published var sellablesResponse: SellableResponse = SellableResponse(count: 1, limit: 1, offset: 0, sellables: [])

    private let apiService: APIService
    private var cancellables = Set<AnyCancellable>()
    
    init(apiService: APIService = APIService()) {
        self.apiService = apiService
        
    }
    
    
    
    // Diese Funktion ruft die Verkaufsbaren-Daten asynchron ab.
    func fetchSellables() async throws -> SellableResponse {
        // Die URL der API wird definiert.
        let urlString = Constants.BASE_URL
        // Die URL wird überprüft, ob sie gültig ist, ansonsten wird eine Fehlermeldung geworfen.
        guard let url = URL(string: urlString) else {
            throw NSError(domain: "com.example.app", code: 0, userInfo: [NSLocalizedDescriptionKey: "Invalid URL: \(urlString)"])
        }
        
        // Die Daten werden über die API-URL asynchron abgerufen.
        let (data, response) = try await URLSession.shared.data(for: URLRequest(url: url))
        
        // Die API-Antwort wird überprüft, ob sie gültig ist, ansonsten wird eine Fehlermeldung geworfen.
        guard let httpResponse = response as? HTTPURLResponse else {
            throw NSError(domain: "com.example.app", code: 0, userInfo: [NSLocalizedDescriptionKey: "Invalid response from sellables API call."])
        }
        
        // Die API-Antwort wird auf den Statuscode 200 bis 299 überprüft. Andernfalls wird eine Fehlermeldung geworfen.
        guard (200...299).contains(httpResponse.statusCode) else {
            throw NSError(domain: "com.example.app", code: httpResponse.statusCode, userInfo: [NSLocalizedDescriptionKey: "Sellables API returned error status code: \(httpResponse.statusCode)"])
        }
        
        // Die API-Antwort wird in ein SellableResponse-Objekt umgewandelt.
        let apiResponse = try JSONDecoder().decode(SellableResponse.self, from: data)
        print("Fetched \(apiResponse.sellables.count) sellables.")
        return apiResponse
    }//:fetchSellables
    
    func fetchData() {
        guard let url = URL(string: "https://api.spreadshirt.net/api/v1/shops/100247767/sellables?\(sellablesResponse.limit)SprdAuth%20apiKey=%22b1271341-2d14-468b-a6ed-d28ba13034c0%22") else {
            print("Invalid URL")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                print("No data in response: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
            if let sellables = try? JSONDecoder().decode([Sellable].self, from: data) {
                DispatchQueue.main.async {
                    self.sellables = sellables
                }
            } else {
                print("Failed to decode JSON data")
            }
        }
        
        task.resume()
    }
}
    
    struct SellableViewModel: Identifiable {
        var id = UUID()
        let sellableRespone: SellableResponse
        let sellable: Sellable
        
        
        
        //----------------| SellableRespone |----------------
        
        // Die Anzahl der Verkaufsbaren wird hier zurückgegeben.
        var count: Int {
            sellableRespone.count
        }
        
        // Die Begrenzung der Verkaufsbaren wird hier zurückgegeben.
        var limit: Int {
            sellableRespone.limit
        }
        
        // Die Verschiebung der Verkaufsbaren wird hier zurückgegeben.
        var offset: Int? {
            sellableRespone.offset
        }
        
        //----------------| Sellable |----------------
        
        // Eine Liste von allen Sellables im aktuellen SellableResponse
        var sellables: [Sellable] {
            sellableRespone.sellables
        }
        
        // Die eindeutige ID des Sellables
        var sellableId: String {
            sellable.sellableId
        }
        
        // Die ID der Idee, zu der das Sellable gehört
        var ideaId: String {
            sellable.ideaId
        }
        
        // Die ID des Hauptdesigns des Sellables
        var mainDesignId: String {
            sellable.mainDesignId
        }
        
        // Die ID des Produkttyps, zu dem das Sellable gehört
        var productTypeId: String{
            sellable.productTypeId
        }
        
        // Der Preis des Sellables
        var price: Price {
            sellable.price
        }
        
        // Der Name des Sellables
        var name: String {
            sellable.name
        }
        
        // Eine Beschreibung des Sellables
        var description: String {
            sellable.description
        }
        
        // Eine Liste von Schlagwörtern, die das Sellable beschreiben
        var tags: [String] {
            sellable.tags
        }
        
        // Ein Vorschaubild des Sellables
        var previewImage: PreviewImage{
            sellable.previewImage
        }
        
        // Eine Liste von Appearance-IDs, die zum Sellable gehören
        var appearanceIds: [String] {
            sellable.appearanceIds
        }
        
        // Die ID der Standard-Appearance des Sellables
        var defaultAppearanceId: String {
            sellable.defaultAppearanceId
        }
        
        
    }
