//
//  SellableView.swift
//  GEILdesignt_Shop
//
//  Created by Timo Schönbeck on 01.03.23.
//

import SwiftUI

struct SellableView: View {
    let sellable: Sellable

    var body: some View {
        VStack(alignment: .leading) {
            Text(sellable.name)
                .font(.headline)
            Text(sellable.description)
                .font(.subheadline)
        }
    }
}

struct SellableView_Previews: PreviewProvider {
    static var previews: some View {
        SellableView(sellable: Sellable(sellableId: "sellableID", ideaId: "", mainDesignId: "mainDesignID", productTypeId: "productTypeID", price: Price(amount: 12.99, currencyId: "MODEL"), name: "Beispiel-Verkaufsgut", description: "Dies ist ein Beispiel für ein verkaufsfähiges Element.", tags: ["Beispiel-Tag"], previewImage: PreviewImage(url: "https://example.com/preview.jpg", type: "MODEL"), appearanceIds: ["appearanceID1", "appearanceID2"], defaultAppearanceId: "appearanceID1"))
    }
}
