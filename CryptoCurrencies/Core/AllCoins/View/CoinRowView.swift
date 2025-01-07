//
//  SwiftUIView.swift
//  CryptoCurrencies
//
//  Created by Vinay on 30/12/24.
//

import SwiftUI

/**
 Represents a Row View of a Coin, used in CoinsListView to show list of coins as rows
 */
struct CoinRowView: View {
    
    let coin:Coin
    let coinsListViewModel: CoinListViewModel
    
    var body: some View {
        HStack(spacing: 12) {
            Text("\(coin.marketCapRank)")
                .foregroundColor(.secondary)
            
            CoinImageView(url: coin.image)
                .frame(width: 32, height: 32)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack{
                    Text("\(coin.name)")
                        .fontWeight(.semibold)
                    Text("(\(coin.symbol.uppercased()))")
                    Spacer()
                    Text(coin.currentPrice.toCurrencyString())
                        .fontWeight(.semibold)
                }
                
                Text("Market Capitalization: \(coin.marketCap.toCurrencyString())")
                    .fontWeight(.light)

            }
        }
        .font(.footnote)
        
    }
}

#Preview {
    CoinRowView(coin: Coin(id: "", symbol: "", name: "", image: "", currentPrice: 10.0, marketCap: 0.0, marketCapRank: 1000), coinsListViewModel: CoinListViewModel(service: CoinDataService()))
}
