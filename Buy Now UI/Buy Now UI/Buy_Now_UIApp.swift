//
//  Buy_Now_UIApp.swift
//  Buy Now UI
//
//  Created by Prinon bhowmik on 11/30/24.
//

import SwiftUI

@main
struct Buy_Now_UIApp: App {
    var body: some Scene {
        WindowGroup {
            BuyNowView(price: 20, discountPercent: 75)
        }
    }
}
