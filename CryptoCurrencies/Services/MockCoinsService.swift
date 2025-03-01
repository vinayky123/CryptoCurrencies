//
//  MockCoinDataService.swift
//  CryptoCurrencies
//
//  Created by Vinay on 28/12/24.
//

import Foundation

/**
 Mock implementation of coin data service protocol which is useful for test cases.
 */
class MockCoinDataService: CoinDataServiceProtocol {
    
    var mockData: Data?
    var mockError: NetworkError?

    func fetchCoins(page: Int, pageLimit: Int) async throws -> [Coin] {
        
        if let mockError {
            throw mockError
        }
        
        do {
            return try JSONDecoder().decode([Coin].self, from: mockData ?? validCoinsTestData)
        }catch {
            throw error as? NetworkError ?? .unknownError(error: error)
        }
    }
  
    func fetchCoinDetails(id: String) async throws -> CoinDetails? {
        if let mockError {
            throw mockError
        }        
        let description = Description(text: "Test description")
        let bitcoinDetails = CoinDetails(id: "bitcoin", symbol: "btc", name: "Bitcoin", description: description)
        return bitcoinDetails
    }
}
