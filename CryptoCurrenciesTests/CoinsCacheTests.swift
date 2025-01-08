//
//  CoinsCacheTests.swift
//  CryptoCurrenciesTests
//
//  Created by Vinay on 08/01/25.
//

import XCTest
@testable import CryptoCurrencies

final class CoinsCacheTests: XCTestCase {

    //This test case has numeric numbers to the tests
    //as the test executuon should ordered since it operates
    //on a shared object.
    /**
     Test if the instatiation of CoinsCache works as expected
     */
    func test1CoinsCacheShouldNotBeNil(){
        let cache = CoinsCache.shared
        XCTAssertNotNil(cache)
    }
    
    /**
     Test cache does not return any data initially
     */
    func test2GetAllCoinsReturnsNil(){
        let cache = CoinsCache.shared
        let coins = cache.getAllCoins()
        XCTAssertNotNil(cache)
        XCTAssertNil(coins)
    }
    
    /**
     Test cache returns data after appending coins data
     */
    func test3GetAllConinsShouldSuccess() async throws{
        let cache = CoinsCache.shared
        let mockService = MockCoinDataService()
        let coins = try await mockService.fetchCoins(page: 1, pageLimit: 20)
        XCTAssertNotNil(coins)
        // append coins from service on cache
        cache.appendCoins(newCoins: coins, page: 1)
        //retrieve coins from cache
        let cachedCoins = cache.getAllCoins()
        XCTAssertNotNil(cachedCoins)
    }
    
    /**
     Test cache has appended page available
     */
    func test4hasPageShouldSuccess() async throws{
        let cache = CoinsCache.shared
        let mockService = MockCoinDataService()
        let coins = try await mockService.fetchCoins(page: 1, pageLimit: 20)
        XCTAssertNotNil(coins)
        // append coins from service on cache
        cache.appendCoins(newCoins: coins, page: 1)
        //retrieve coins from cache
        let cachedCoins = cache.getAllCoins()
        XCTAssertNotNil(cachedCoins)
        //Check page number
        let pageExists = cache.hasPage(page: 1)
        XCTAssertTrue(pageExists)
    }
    
    /**
     Test cache has appended page available
     */
    func test5hasPageShouldFail() async throws{
        let cache = CoinsCache.shared
        let mockService = MockCoinDataService()
        let coins = try await mockService.fetchCoins(page: 1, pageLimit: 20)
        XCTAssertNotNil(coins)
        // append coins from service on cache
        cache.appendCoins(newCoins: coins, page: 1)
        //retrieve coins from cache
        let cachedCoins = cache.getAllCoins()
        XCTAssertNotNil(cachedCoins)
        //Check page number
        let pageExists = cache.hasPage(page: 2)
        XCTAssertFalse(pageExists)
    }
    
}
