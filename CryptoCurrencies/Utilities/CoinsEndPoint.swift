//
//  CoinsEndPoint.swift
//  CryptoCurrencies
//
//  Created by Vinay on 29/12/24.
//

import Foundation

/**
 Enum representing the cases to retreive coin data
 */
enum CoinsEndPoint {
    case allCoins(page: Int, pageLimit: Int)
    case coinDetails(id: String)
}

/**
 CoinsEndPoint implementing EndPoint protocol to provide the concrete implementation.
 */
extension CoinsEndPoint : EndPoint {

    var method: HTTPMethods {
        switch self {
        case .allCoins:
            return .get
        case .coinDetails:
            return .post
        }
    }
    
    var baseURL: String {
        switch self {
        case .allCoins, .coinDetails:
            return Constants.API.baseUrl
        }
    }
    
    var path: String {
        switch self {
        case .allCoins:
            return "/api/v3/coins/markets"
        case .coinDetails(let coinId):
            return "/api/v3/coins/\(coinId)"
        }
    }

    var headers: [String : String]? {
        commonHeaders
    }

    var queryItems: [URLQueryItem]? {
        switch self {
        case .allCoins(let page, let pageLimit):
            [ URLQueryItem(name: "vs_currency", value: "usd"),
              URLQueryItem(name: "order", value: "market_cap_desc"),
              URLQueryItem(name: "per_page", value: "\(pageLimit)"),
              URLQueryItem(name: "page", value: "\(page)"),
              URLQueryItem(name: "price_change_percentage", value: "24h")]
            
        case .coinDetails:
            [ URLQueryItem(name: "localization", value: "false")]
        }
    }
    
    var body: Encodable? {
        switch self {
        case .allCoins:
            return nil
        case .coinDetails(let coinDetails):
            return coinDetails
        }
    }
}
