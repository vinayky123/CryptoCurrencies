//
//  HTTPClient.swift
//  CryptoCurrencies
//
//  Created by Vinay on 28/12/24.
//

import Foundation

protocol NetworkManager {
    func request<T:Decodable>(type:T.Type, endpoint:EndPoint ) async throws -> T
}

extension NetworkManager {
    
    func request<T:Decodable>(type:T.Type, endpoint:EndPoint ) async throws -> T {
        
        guard let url = endpoint.url else {
            throw NetworkError.requestFailed(description: "Invalid Endpoint")
        }
        
        let urlRequest = URLRequest(url:url)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.requestFailed(description: "Request Failed")
        }
        
        guard httpResponse.statusCode == 200 else {
            throw NetworkError.invalidStatusCode(statusCode: httpResponse.statusCode)
        }
        
        do {
            return try JSONDecoder().decode(T.self, from: data)
        }catch {
            throw error as? NetworkError ?? .unknownError(error: error)
        }
    }
}
