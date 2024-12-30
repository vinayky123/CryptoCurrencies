//
//  Coin.swift
//  CryptoCurrencies
//
//  Created by Vinay on 28/12/24.
//

import Foundation


// MARK: - Coin
struct Coin: Codable, Identifiable, Hashable {
    let id, symbol, name: String
    let image: String
    let currentPrice, marketCap: Double
    let marketCapRank: Int
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
    }
}
