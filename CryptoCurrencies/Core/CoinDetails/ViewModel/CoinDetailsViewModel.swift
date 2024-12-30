//
//  CoinDetailViewModel.swift
//  CryptoCurrencies
//
//  Created by Vinay on 28/12/24.
//

import Foundation

class CoinDetailsViewModel:ObservableObject {
    
    @Published var coinDetails:CoinDetails?
    @Published var errorMessage:String?
    @Published var isLoading:Bool = false

    private var service:CoinDataServiceProtocol
    private var coinId:String
    
    init(coinId:String, service:CoinDataServiceProtocol) {
        self.coinId = coinId
        self.service = service
    }

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
