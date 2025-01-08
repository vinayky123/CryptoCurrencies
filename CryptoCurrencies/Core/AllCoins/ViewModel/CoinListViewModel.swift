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
    @Published var displayAlert:Bool = false
    @Published var isLoading = false
    @Published var hasMoreData = true
    var errorMessage:String = ""

    // To track the current page number for pagination
    private var currentPage = 0
    
    // Number of coins to fetch per page
    // NOTE:-
    // Since there is a rate limit of 5-10 requests per minute for the Public API used in this app using pageSize as 200,
    // ideally this number should be as minimal as the number of visible cells in the list.
    private let pageSize = 200
    
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
        }catch {
            guard let error = error as? NetworkError else { return }
            self.errorMessage = error.customDescription
            self.displayAlert = true
        }
        self.isLoading = false
    }
}
