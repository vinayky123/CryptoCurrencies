//
//  SwiftUIView.swift
//  CryptoCurrencies
//
//  Created by Vinay on 30/12/24.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin:Coin
    let coinsListViewModel: CoinListViewModel
    
    var body: some View {
        HStack(spacing: 12) {
            Text("\(coin.marketCapRank)")
                .foregroundColor(.secondary)
            
            CoinImageView(url: coin.image)
                .frame(width: 32, height: 32)
            
            VStack(alignment: .leading) {
                HStack{
                    Text("\(coin.name)")
                        .fontWeight(.semibold)
                    Spacer()
                    Text(coin.currentPrice.toCurrencyString())
                        .fontWeight(.semibold)
                }
                Text(coin.symbol.uppercased())
                Text("Market Capitalization: \(coin.marketCap.toCurrencyString())")

            }
        }
        .font(.footnote)
        
    }
}

#Preview {
    CoinRowView(coin: Coin(id: "", symbol: "", name: "", image: "", currentPrice: 10.0, marketCap: 0.0, marketCapRank: 1000), coinsListViewModel: CoinListViewModel(service: CoinDataService()))
}