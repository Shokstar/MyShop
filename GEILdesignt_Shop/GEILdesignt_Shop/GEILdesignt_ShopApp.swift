//
//  GEILdesignt_ShopApp.swift
//  GEILdesignt_Shop
//
//  Created by Timo Schönbeck on 01.03.23.
//

import SwiftUI

@main
struct GEILdesignt_ShopApp: App {
    var body: some Scene {
        WindowGroup {
            let sellalblesListVM = SellableListViewModel()
            let sellablesVM = SellableViewModel(
                sellableRespone: SellableResponse(
                    count: 1,
                    limit: 10,
                    offset: 0,
                    sellables: [
                        Sellable(
                            sellableId: "1",
                            ideaId: "idea1",
                            mainDesignId: "design1",
                            productTypeId: "type1",
                            price: Price(amount: 19.99, currencyId: "USD"),
                            name: "Product Name",
                            description: "Product Description",
                            tags: ["tag1", "tag2"],
                            previewImage: PreviewImage(
                                url: "https://example.com/image.png", type: "image/png"
                            ),
                            appearanceIds: ["appearance1", "appearance2"],
                            defaultAppearanceId: "appearance1"
                        )
                    ]
                ),
                sellable: Sellable(
                    sellableId: "1",
                    ideaId: "idea1",
                    mainDesignId: "design1",
                    productTypeId: "type1",
                    price: Price(amount: 19.99, currencyId: "USD"),
                    name: "Product Name",
                    description: "Product Description",
                    tags: ["tag1", "tag2"],
                    previewImage: PreviewImage(
                        url: "https://example.com/image.png", type: "image/png"
                    ),
                    appearanceIds: ["appearance1", "appearance2"],
                    defaultAppearanceId: "appearance1"
                )
            )
            ContentView(sellablevm: sellablesVM, sellablesListVM: sellalblesListVM)
        }
    }
}
