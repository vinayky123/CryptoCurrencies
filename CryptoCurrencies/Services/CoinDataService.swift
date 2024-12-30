//
//  CoinDataService.swift
//  CryptoCurrencies
//
//  Created by Vinay on 28/12/24.
//

import Foundation

protocol CoinDataServiceProtocol {
    func fetchCoins(page:Int, pageLimit:Int) async throws -> [Coin]
    func fetchCoinDetails(id:String) async throws -> CoinDetails?
}


class CoinDataService : NetworkManager, CoinDataServiceProtocol {

    func fetchCoins(page: Int, pageLimit: Int) async throws -> [Coin] {
        
        if CoinsCache.shared.hasPage(page: page) {
            return CoinsCache.shared.getAllCoins() ?? []
        }
        
        //Hit the API only if the page is not cached.
        let coins = try await request(type: [Coin].self, endpoint: CoinsEndPoint.allCoins(page: page, pageLimit: pageLimit))
        
        CoinsCache.shared.appendCoins(newCoins: coins, page: page)

        return CoinsCache.shared.getAllCoins() ?? []
    }
    
    func fetchCoinDetails(id:String) async throws -> CoinDetails? {
        
        if let cachedCoinDetails = CoinDetailsCache.shared.get(key: id) {
            return cachedCoinDetails
        }
        
        let coinDetails = try await request(type: CoinDetails.self, endpoint:CoinsEndPoint.coinDetails(id: id))
        CoinDetailsCache.shared.set(coinDetails: coinDetails, key: id)
        return coinDetails
    }
}
