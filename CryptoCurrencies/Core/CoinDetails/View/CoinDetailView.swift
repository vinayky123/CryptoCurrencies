//
//  CoinDetailView.swift
//  CryptoCurrencies
//
//  Created by Vinay on 28/12/24.
//

import Foundation
import SwiftUI

struct CoinDetailView: View {
    private let coin: Coin
    @ObservedObject var viewModel: CoinDetailsViewModel
    
    init(coin: Coin, service: CoinDataServiceProtocol) {
        self.coin = coin
        self.viewModel = CoinDetailsViewModel(coinId:coin.id, service:service)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            
            if viewModel.isLoading {
                ProgressView()
            }
            else if let _ = viewModel.coinDetails {
                
                coinDetailsHeader
                
                coinDetailsDescription
            }
            else if let errorMessage = viewModel.errorMessage {
                Text("\(errorMessage)")
                    .padding()
                    .fontWeight(.regular)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("\(coin.name.capitalized)")
        .padding()
        .task {
            await viewModel.fetchCoinDetails()
        }
    }
    
    private var coinDetailsDescription: some View {
        VStack(alignment: .leading) {
            Text(viewModel.coinDetails?.description.text ?? "Description not available")
                .font(.footnote)
                .padding(.vertical)
            Spacer()
        }
    }
    
    private var coinDetailsHeader: some View {
        HStack {
            VStack(alignment: .leading) {
                if let details = viewModel.coinDetails {
                    Text(details.name)
                        .fontWeight(.semibold)
                        .font(.subheadline)
                    
                    Text(details.symbol.uppercased())
                        .font(.footnote)
                }
            }
            Spacer()
            
            CoinImageView(url: coin.image)
                .frame(width: 64, height: 64)
        }
    }
}
