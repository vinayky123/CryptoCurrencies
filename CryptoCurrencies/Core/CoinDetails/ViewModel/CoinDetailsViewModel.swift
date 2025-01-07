//
//  CoinDetailViewModel.swift
//  CryptoCurrencies
//
//  Created by Vinay on 28/12/24.
//

import Foundation

/**
View Model to manage the state of `CoinDetails` data and also exposes the data to the view
 */
class CoinDetailsViewModel: ObservableObject {
    
    // MARK:- Properties
    
    // Published properties to trigger UI updates
    @Published var coinDetails:CoinDetails?
    @Published var errorMessage:String?
    @Published var isLoading:Bool = false

    // Service to fetch the coin details data
    private var service:CoinDataServiceProtocol
    
    // To fetch the corresponding details of user selected coin
    private var coinId:String
    
    init(coinId:String, service:CoinDataServiceProtocol) {
        self.coinId = coinId
        self.service = service
    }

    // MARK:- Methods
    
    /**
     Fetches coin details asynchronosly using coin data service.
     This method updates the view model's state.
     */
    @MainActor
    func fetchCoinDetails() async  {
        do {
            self.isLoading = true
            self.coinDetails = try await service.fetchCoinDetails(id: coinId)
            self.isLoading = false

        }catch {
            self.isLoading = false
            guard let error = error as? NetworkError else { return }
            self.errorMessage = error.customDescription
        }
    }
}
