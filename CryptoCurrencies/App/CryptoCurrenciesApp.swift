//
//  CryptoCurrenciesApp.swift
//  CryptoCurrencies
//
//  Created by Vinay on 28/12/24.
//

import SwiftUI

@main
struct CryptoCurrenciesApp: App {
    var body: some Scene {
        WindowGroup {
            CoinListView(service: CoinDataService())
        }
    }
}
