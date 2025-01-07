//
//  NetworkError.swift
//  CryptoCurrencies
//
//  Created by Vinay on 29/12/24.
//

import Foundation

/**
 Custom Enum Error impeneting Error protocol to provide customised errors with descrtiption
 */
enum NetworkError: Error {
    
    // Different types of error cases
    case invalidData
    case jsonParsingFailure
    case requestFailed(description: String)
    case invalidURL
    case invalidStatusCode(statusCode: Int)
    case unknownError(error:Error)
    
    // Returns customised string for the different types of errors
    var customDescription: String {
        switch self {
        case .invalidData: return "Invalid data"
        case .jsonParsingFailure: return "Failed to parse JSON"
        case let .requestFailed(description): return "Request failed \(description)"
        case .invalidURL: return "Invalid URL"
        case let .invalidStatusCode(statusCode): return "Invalid Status Code \(statusCode) from server. We are reviving too many requests to the server,please slow down"
        case let .unknownError(error): return "We are reviving too many requests to the server,please slow down. \(error)" // 30 requests per minute
        }
    }
}
