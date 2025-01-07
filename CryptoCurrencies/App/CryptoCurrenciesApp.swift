//
//  CryptoCurrenciesApp.swift
//  CryptoCurrencies
//
//  Created by Vinay on 28/12/24.
//

import SwiftUI

@main
 
/**
This is the starting point for the CryptoCurrenciesApp.
It initializes `CoinListView` with the dependency `CoinDataService`.
 */
struct CryptoCurrenciesApp: App {
    var body: some Scene {
        WindowGroup {
            CoinListView(service: CoinDataService())
        }
    }
}
