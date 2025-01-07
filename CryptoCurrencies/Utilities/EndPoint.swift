//
//  EndPoint.swift
//  CryptoCurrencies
//
//  Created by Vinay on 29/12/24.
//

import Foundation

/**
 Enum representing HTTP methods used in API requests.
 */
enum HTTPMethods: String {
    case get = "GET"
    case post = "POST"
    case delete = "DELETE"
}

/**
  A protocol defining the requirements for an API endpoint.
 */
protocol EndPoint {
    
    // HTTP method to be used for the request
    var method: HTTPMethods { get }
    
    // The specific path of the endpoint
    var path: String { get }
    
    // The base URL for the endpoint
    var baseURL: String { get }
    
    // Optional Body
    var body: Encodable? { get }
    
    // Optional headers to be added in request
    var headers: [String: String]? { get }
    
    // Optional query items
    var queryItems: [URLQueryItem]? { get }
    
    // Computed final URL
    var url: URL? { get }

}

/**
 Extension of EndPoint to provide default behaviour of common properties.
 */
extension EndPoint {
    
    // Common headers to be added in every request
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
