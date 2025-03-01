//
//  Constants.swift
//  CryptoCurrencies
//
//  Created by Vinay on 30/12/24.
//

import Foundation

/**
 Defines Constants that are useful across the app
 */
enum Constants {
    
    // Constants related to APIs
    enum API {
        static let baseUrl = "api.coingecko.com"
        static let contentType = "application/json"
        // API Key is should be stored in some vault and access from there, as it is sample app using from here
        static let apiKey = "CG-u6nNeWCd9WDrzs4ua89BXHVm"
        static let urlScheme = "https"
    }
    
    enum CoinListView {
        static let title = "Crypto Currencies"
    }
    
    enum Cache {
        static let coinsKey = "allCoins"
    }
}
