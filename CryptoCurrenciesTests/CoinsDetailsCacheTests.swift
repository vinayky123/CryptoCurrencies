//
//  CoinsDetailsCacheTests.swift
//  CryptoCurrenciesTests
//
//  Created by Vinay on 08/01/25.
//

import XCTest
@testable import CryptoCurrencies

final class CoinsDetailsCacheTests: XCTestCase {

    /**
     Test if the instantiation of Coin Details Cache is successful
     */
    func testCoinDetailsCacheShouldNotBeNil(){
        let cache = CoinDetailsCache.shared
        XCTAssertNotNil(cache)
    }
    
    /**
     Test if Coin Details Cache has no initial value
     */
    func testGetCoinDetailsShouldFail(){
        let cache = CoinDetailsCache.shared
        XCTAssertNotNil(cache)
        let details = cache.get(key: "btc")
        XCTAssertNil(details)
    }
    
    /**
     Test if Coin Details Cache return value after setting with details
     */
    func testGetCoinDetailsShouldSucceed() async throws{
        let cache = CoinDetailsCache.shared
        XCTAssertNotNil(cache)
        let mockService = MockCoinDataService()
        let details = try await mockService.fetchCoinDetails(id: "btc")
        var cachedDetails = cache.get(key: "btc")
        XCTAssertNotNil(details)
        XCTAssertNil(cachedDetails)
        cache.set(coinDetails: details!, key: "btc")
        cachedDetails = cache.get(key: "btc")
        XCTAssertNotNil(details)
    }

}
