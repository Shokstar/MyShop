//
//  SellableslistView.swift
//  GEILdesignt_Shop
//
//  Created by Timo Schönbeck on 01.03.23.
//

import SwiftUI

struct SellableListView: View {
    @State var sellables: Sellable
    @State var sellablesListVM: SellableListViewModel
   
      
      var body: some View {
          VStack {
              List(sellables) { sellable in
                  VStack(alignment: .leading) {
                      Text(sellable.name)
                          .font(.headline)
                      Text(sellable.description)
                          .font(.subheadline)
                      Text("\(sellable.price.amount) \(sellable.price.currencyId)")
                          .font(.caption)
                      AsyncImage(url: URL(string: sellable.previewImage.url)) { phase in
                          switch phase {
                          case .empty:
                              ProgressView()
                          case .success(let image):
                              image
                                  .resizable()
                                  .aspectRatio(contentMode: .fit)
                          case .failure:
                              Image(systemName: "exclamationmark.icloud")
                                  .resizable()
                                  .aspectRatio(contentMode: .fit)
                                  .foregroundColor(.red)
                          @unknown default:
                              fatalError()
                          }
                      }
                  }
              }
              
              Button("Aktualisieren") {
                 try? sellablesListVM.fetchData()
              }
          }
          .onAppear{
             try? sellablesListVM.fetchData()
          }
      }
      
      func fetchData() {
          guard let url = URL(string: "https://api.spreadshirt.net/api/v1/shops/100247767/sellables?page=0&SprdAuth%20apiKey=%22b1271341-2d14-468b-a6ed-d28ba13034c0%22") else {
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

struct SellableslistView_Previews: PreviewProvider {
    static var previews: some View {
       
        let sellablesListVM = SellableListViewModel()
        SellableListView(sellables: sellablesListVM.sellables, sellablesListVM: sellablesListVM)
    }
}
