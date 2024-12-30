//
//  EndPoint.swift
//  CryptoCurrencies
//
//  Created by Vinay on 29/12/24.
//

import Foundation

enum HTTPMethods: String {
    case get = "GET"
    case post = "POST"
    case delete = "DELETE"
}

protocol EndPoint {
    
    var method: HTTPMethods { get }
    var path: String { get }
    var baseURL: String { get }
    
    // Body & headers
    var body: Encodable? { get }
    var headers: [String: String]? { get }
    
    // Optional query items
    var queryItems: [URLQueryItem]? { get }
    
    // Computed final URL
    var url: URL? { get }

}

extension EndPoint {
    
    var commonHeaders: [String: String] {
        return [
            "Content-Type": Constants.API.contentType,
            "x-cg-demo-api-key": Constants.API.apiKey
        ]
    }
    
    // Default implementation for url
        var url: URL? {
            var components = URLComponents()
            components.scheme = Constants.API.urlScheme
            components.host = baseURL
            components.path = path
            components.queryItems = queryItems
            return components.url
        }
}
