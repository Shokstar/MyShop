//
//  SellablesDetailView.swift
//  GEILdesignt_Shop
//
//  Created by Timo Schönbeck on 02.03.23.
//

import SwiftUI


struct SellableDetailView: View {
    let sellable: Sellable
    @State var sellableVM: SellableListViewModel
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack {
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
            .frame(width: 300, height: 300)
            
            Text(sellable.name)
                .font(.title)
                .padding()
            
            Text(sellable.description)
                .multilineTextAlignment(.center)
                .padding()
            
            Text("\(sellable.price.amount) \(sellable.price.currencyId)")
                .font(.title2)
                .padding()
            
            Button("Aktualisieren") {
           
                try? sellableVM.fetchData()
              
            }

            }
            .disabled(isLoading)
            .padding()
            
            Spacer()
        }
    }


struct SellableDetailView_Previews: PreviewProvider {
    static let sellable = Sellable(sellableId: "N02abp1xnxSjx7Jywby7-812-7",
                                   ideaId: "62a46a3628f4aa0fbe2b00de",
                                   mainDesignId: "308271771",
                                   productTypeId: "812",
                                   price: Price(amount: 29.9, currencyId: "1"),
                                   name: "Das Höllen Baby - GEILdesignt",
                                   description: "Super Geschenkidee für werdende Mütter als lustiges Sprüche T-Shirt für kommende Babyparties. Designt von Shokstar für GEILdesignt.",
                                   tags: ["birthday", "GEILdesignt", "geburt", "mummy", "baby", "Baby", "schwanger", "schwangerschaft", "Shokstar"],
                                   previewImage: PreviewImage(url: "https://image.spreadshirtmedia.net/image-server/v1/products/T812A2PA5886PT17X33Y0D308271771W27990H44748/views/1,width=500,height=500,appearanceId=2,backgroundColor=22262d,crop=list,modelId=85/super-geschenkidee-fuer-werdende-muetter-als-lustiges-sprueche-t-shirt-fuer-kommende-babyparties-designt-von-shokstar-fuer-geildesignt.jpg", type: "MODEL"),
                                   appearanceIds: ["566", "645", "648", "719", "1", "2", "366", "348", "387", "92", "39", "231", "317", "3", "29", "328", "339"],
                                   defaultAppearanceId: "2")
    
    static var previews: some View {
        let sellableVM = SellableListViewModel()
        SellableDetailView(sellable: sellable, sellableVM: sellableVM)
    }
}
