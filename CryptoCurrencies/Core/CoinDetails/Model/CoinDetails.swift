//
//  CoinDetail.swift
//  CryptoCurrencies
//
//  Created by Vinay on 28/12/24.
//

struct CoinDetails: Codable {
    let id: String
    let symbol: String
    let name: String
    let description: Description
}

struct Description: Codable {
    let text: String
    
    enum CodingKeys: String, CodingKey {
        case text = "en"
    }
}
