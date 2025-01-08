//
//  ContentView.swift
//  CryptoCurrencies
//
//  Created by Vinay on 28/12/24.
//

import SwiftUI

/**
 Shows list of Coins retrieved when the app launches.
 */
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
                Section(header:sectionHeader)
                {
                    if (viewModel.coins.isEmpty)  {
                        Text("Unable to fetch coins data at the moment, please wait or try again later.")
                    }
                    else {
                        ForEach(0..<viewModel.coins.count, id: \.self, content: { index in
                            let coin = viewModel.coins[index]
                            NavigationLink(value: coin) {
                                CoinRowView(coin: coin, coinsListViewModel: viewModel)
                                    .onAppear {
                                        if index == (viewModel.coins.count - 1)  {
                                            Task {
                                                await viewModel.fetchCoins()
                                            }
                                        }
                                    }
                                    
                            }.accessibilityIdentifier("row-\(index)")
                        })
                    }
                }
            }
            .navigationDestination(for: Coin.self) { coin in
                CoinDetailView(coin:coin, service: service)
            }
            .alert(isPresented: $viewModel.displayAlert, content: {
                Alert(title: Text("Error"), message: Text(viewModel.errorMessage), dismissButton: .default(Text("OK")))
            })
            
            .navigationTitle(Constants.CoinListView.title)
        }
        .task {
            await viewModel.fetchCoins()
        }
    }
    
    var sectionHeader: some View  {
        HStack {
            Text("Coin")
                .font(.subheadline)
            
            Spacer()
            
            Text("Price")
                .font(.subheadline)
        }
    }
}

#Preview {
    CoinListView(service: MockCoinDataService())
}
