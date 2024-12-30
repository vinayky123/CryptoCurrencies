//
//  CoinsListViewTests.swift
//  CryptoCurrenciesTests
//
//  Created by Vinay on 29/12/24.
//

import XCTest
@testable import CryptoCurrencies


class CoinListViewModelTests: XCTest {
    
    func testInitCoinsListViewModelShouldNotBeNil(){
        let service = MockCoinDataService()
        let viewModel = CoinListViewModel(service: service)
        
        XCTAssertNotNil(viewModel,"Coins View Model should not be nil")
    }
    
    func testCoinsFetchShouldBeSuccessful() async {
        let service = MockCoinDataService()
        let viewModel = CoinListViewModel(service: service)
        
        await viewModel.fetchCoins()
        
        XCTAssertTrue(viewModel.coins.count > 0)
    }
    
    func testCoinsFetchWithInvalidDataShouldNotSucceed() async {
        let service = MockCoinDataService()
        service.mockData = invalidCoinsTestData

        let viewModel = CoinListViewModel(service: service)
        
        await viewModel.fetchCoins()
        
        XCTAssertTrue(viewModel.coins.isEmpty)
        XCTAssertNotNil(viewModel.errorMessage)

    }
    
    func testCoinsFetchThowrsInvalidDataError() async {
        let service = MockCoinDataService()
        service.mockError = NetworkError.invalidData

        let viewModel = CoinListViewModel(service: service)
        
        await viewModel.fetchCoins()
        
        XCTAssertNotNil(viewModel.errorMessage)
        XCTAssertEqual(viewModel.errorMessage, NetworkError.invalidURL.customDescription)
        
    }
}
