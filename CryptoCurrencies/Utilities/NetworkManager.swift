//
//  HTTPClient.swift
//  CryptoCurrencies
//
//  Created by Vinay on 28/12/24.
//

import Foundation

/**
 A protocol defining a network manager for making API requests.
 */
protocol NetworkManager {
    
    /**
     Sends a network request to a given endpoint and decodes the response.
         - Parameters:
           - type: `Decodable` type of the response.
           - endpoint: Endpoint defining the request details.
         - Returns: Generic object of the `Decodable` type.
         - Throws: A `NetworkError` if the request or decoding fails.
    */
    func request<T:Decodable>(type:T.Type, endpoint:EndPoint ) async throws -> T
}

/**
 Provides a default implementation of the `NetworkManager` protocol.
*/
extension NetworkManager {
    
    func request<T:Decodable>(type:T.Type, endpoint:EndPoint ) async throws -> T {
        
        // Verify the endpoint url and throw error if it is invalid
        guard let url = endpoint.url else {
            throw NetworkError.requestFailed(description: "Invalid Endpoint")
        }
        
        let urlRequest = URLRequest(url:url)
        
        // Hit the api using URLSession and capture the data and response
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        // Verify the response
        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.requestFailed(description: "Request Failed")
        }
        
        // Verifiy response code and throw error if response code is not 200 (OK)
        guard httpResponse.statusCode == 200 else {
            throw NetworkError.invalidStatusCode(statusCode: httpResponse.statusCode)
        }
        
        // Decode response and throw error if decode fails
        do {
            return try JSONDecoder().decode(T.self, from: data)
        }catch {
            throw error as? NetworkError ?? .unknownError(error: error)
        }
    }
}
