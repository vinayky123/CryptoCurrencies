//
//  CoinListViewModel.swift
//  CryptoCurrencies
//
//  Created by Vinay on 28/12/24.
//

import Foundation

class CoinListViewModel:ObservableObject {
    
    @Published var coins = [Coin]()
    @Published var errorMessage:String?
    @Published var isLoading = false
    @Published var hasMoreData = true
    
    private var currentPage = 0
    private let pageSize = 10
    
    private let service: CoinDataServiceProtocol
    
    init(service:CoinDataServiceProtocol){
        self.service = service
    }
    
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
