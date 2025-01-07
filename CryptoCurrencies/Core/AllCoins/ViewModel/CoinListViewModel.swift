//
//  CoinListViewModel.swift
//  CryptoCurrencies
//
//  Created by Vinay on 28/12/24.
//

import Foundation

/**
View Model to manage the state of `[Coin]` data and also exposes the data to the view
 */
class CoinListViewModel: ObservableObject {
    
    // MARK:- Properties
    
    // Published properties to trigger UI updates
    @Published var coins = [Coin]()
    @Published var errorMessage:String?
    @Published var isLoading = false
    @Published var hasMoreData = true
    
    // To track the current page number for pagination
    private var currentPage = 0
    
    // Number of coins to fetch per page
    private let pageSize = 10
    
    // Service to fetch the coins data
    private let service: CoinDataServiceProtocol
    
    init(service:CoinDataServiceProtocol){
        self.service = service
    }
    
    // MARK:- Methods
    
    /**
     Fetches next page of coins asynchronosly using coin data service.
     This method also handles pagination and updates the view model's state.
     */
    @MainActor
    func fetchCoins() async {
        
        guard !isLoading else { return }
        guard hasMoreData else { return }
        
        isLoading = true
        
        let nextPage = currentPage + 1
        do {
            self.coins = try await service.fetchCoins(page: nextPage, pageLimit: pageSize)
            
            self.currentPage = nextPage
            self.isLoading = false
        }catch {
            guard let error = error as? NetworkError else { return }
            self.errorMessage = error.customDescription
        }
    }
}
