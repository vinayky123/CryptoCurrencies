//
//  CoinDetailsViewModelTests.swift
//  CryptoCurrenciesTests
//
//  Created by Vinay on 08/01/25.
//

import XCTest
@testable import CryptoCurrencies

final class CoinDetailsViewModelTests: XCTestCase {

    /**
     Check initialisation of CoinDetailsView model succeeds with valid data
     */
    func testInitCoinDetailViewModelShouldNotBeNil(){
        let service = MockCoinDataService()
        let viewModel = CoinDetailsViewModel(coinId: "btc", service: service)
        // Ensure the view model object is not nil
        XCTAssertNotNil(viewModel,"Coin Details View Model should not be nil")
    }
    
    /**
     Check the view model state when the service returns valid data for coin details
     */
    func testFetchCoinDetailsShouldBeSuccessful() async {
        let service = MockCoinDataService()
        let viewModel = CoinDetailsViewModel(coinId: "btc", service: service)
        await viewModel.fetchCoinDetails()
        //ensure coinDetails propery has valid data
        XCTAssertNotNil(viewModel.coinDetails)
        //ensure that the error message is nil
        XCTAssertNil(viewModel.errorMessage)
    }
    
    /**
     Check the view model state when the service throws error for coin details
     */
    func testFetchCoinDetailsShouldFail() async {
        let service = MockCoinDataService()
        //simulate network error
        service.mockError = NetworkError.invalidStatusCode(statusCode: 400)
        let viewModel = CoinDetailsViewModel(coinId: "btc", service: service)
        await viewModel.fetchCoinDetails()
        //ensure coinDetails property is nil
        XCTAssertNil(viewModel.coinDetails)
        //ensure that the error message is NOT nil
        XCTAssertNotNil(viewModel.errorMessage)
    }

}
