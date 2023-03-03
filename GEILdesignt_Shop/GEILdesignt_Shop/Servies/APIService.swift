//
//  APIService.swift
//  GEILdesignt_Shop
//
//  Created by Timo Schönbeck on 01.03.23.
//

import Foundation

// Die APIService-Klasse ist eine Singleton-Klasse, die eine gemeinsame Instanz bereitstellt.
class APIService {
    
    static let shared = APIService()
    
    // Die Basis-URL der API
    private let baseURL = Constants.BASE_URL
    
    // Eine Methode zum Abrufen der Verkaufseinheiten von der API
    func fetchSellables(completion: @escaping ([Sellable]) -> Void) {
        guard let url = URL(string: baseURL) else {
            completion([])
            return
        }
        
        // Senden einer Anforderung an die API, um Verkaufseinheiten abzurufen
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion([])
                return
            }
            
            // Dekodieren der erhaltenen Daten in eine Verkaufseinheits-Response-Struktur
            do {
                let sellablesResponse = try JSONDecoder().decode(SellableResponse.self, from: data)
                completion(sellablesResponse.sellables)
            } catch {
                print(error.localizedDescription)
                completion([])
            }
        }.resume()
    }
}
