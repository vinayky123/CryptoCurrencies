//
//  ContentView.swift
//  CryptoCurrencies
//
//  Created by Vinay on 28/12/24.
//

import SwiftUI

struct CoinListView: View {
    
    private let service: CoinDataServiceProtocol
    @StateObject var viewModel:CoinListViewModel
    
    init(service: CoinDataServiceProtocol) {
        self.service = service
        self._viewModel = StateObject(wrappedValue: CoinListViewModel(service: service))
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<viewModel.coins.count, id: \.self, content: { index in
                    let coin = viewModel.coins[index]
                    NavigationLink(value: coin) {
                        CoinRowView(coin: coin, coinsListViewModel: viewModel)
                            .frame(height: 80)
                            .onAppear {
                                if index == (viewModel.coins.count - 1)  {
                                    Task {
                                        await viewModel.fetchCoins()
                                    }
                                }
                            }
                    }
                })
            }
            .navigationDestination(for: Coin.self) { coin in
                CoinDetailView(coin:coin, service: service)
            }
            .overlay {
                if let error = viewModel.errorMessage {
                    Text(error)
                        .padding()
                        .fontWeight(.regular)
                }
            }
            .navigationTitle(Constants.CoinListView.title)
        }
        .task {
            await viewModel.fetchCoins()
        }
    }
}

#Preview {
    CoinListView(service: MockCoinDataService())
}