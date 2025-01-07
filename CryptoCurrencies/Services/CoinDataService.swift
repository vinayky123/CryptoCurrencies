//
//  CoinDataService.swift
//  CryptoCurrencies
//
//  Created by Vinay on 28/12/24.
//

import Foundation

/**
 This protocol definines the interface for fetching list and details of cryptocurrency data.
 */
protocol CoinDataServiceProtocol {
    /**
     Fetches a list of coins with pagination support.
     - Parameters:
     - page: The current page number to fetch.
     - pageLimit: The number of items per page.
     - Returns: An array of `Coin` objects.
     - Throws: An error if the data fetch fails.
     */
    func fetchCoins(page:Int, pageLimit:Int) async throws -> [Coin]
    
    /**
     Fetches detailed information for a specific coin.
     - Parameters:
     - id: The unique identifier of the coin.
     - Returns: An optional `CoinDetails` object containing detailed data about the coin.
     - Throws: An error if the data fetch fails or the coin is not found.
     */
    func fetchCoinDetails(id:String) async throws -> CoinDetails?
}

/**
 CoinDataService implements NetworkManager, CoinDataServiceProtocol
 */
class CoinDataService : NetworkManager, CoinDataServiceProtocol {
    
    func fetchCoins(page: Int, pageLimit: Int) async throws -> [Coin] {
        
        // If given page is already cached, return cached coins.
        if CoinsCache.shared.hasPage(page: page) {
            return CoinsCache.shared.getAllCoins() ?? []
        }
        
        // Hit the API only if the page is not cached.
        let coins = try await request(type: [Coin].self, endpoint: CoinsEndPoint.allCoins(page: page, pageLimit: pageLimit))
        
        // Append and Cache the coins retrieved
        CoinsCache.shared.appendCoins(newCoins: coins, page: page)
        
        return CoinsCache.shared.getAllCoins() ?? []
    }
    
    func fetchCoinDetails(id:String) async throws -> CoinDetails? {
        
        // If the coin details for given id is already cached, return cached coin details.
        if let cachedCoinDetails = CoinDetailsCache.shared.get(key: id) {
            return cachedCoinDetails
        }
        
        // Hit the API only if the coin detail is not cached.
        let coinDetails = try await request(type: CoinDetails.self, endpoint:CoinsEndPoint.coinDetails(id: id))
        
        // Cache the coin details
        CoinDetailsCache.shared.set(coinDetails: coinDetails, key: id)
        
        return coinDetails
    }
}
