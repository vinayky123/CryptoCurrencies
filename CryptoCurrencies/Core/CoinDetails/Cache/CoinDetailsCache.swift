//
//  CoinDetailsCache.swift
//  CryptoCurrencies
//
//  Created by Vinay on 29/12/24.
//

import Foundation

/**
 This is a singleton class for caching 'CoinDetails' data
 */
final class CoinDetailsCache {
    
    //MARK:- Properties

    // Shared instance of this cache class
    static let shared = CoinDetailsCache()
    
    // 'private' prevents instatiation of this class from outside of this class
    private init() {}
    
    private var cache = NSCache<NSString, NSData>()
    
    //MARK:- Methods
    
    /**
     Stores coin details for the key in the cache.
        - Parameters
            - coinDetails: `CoinDetails` objects to be cached.
            - key: Coin id to be saved for the corresponding `CoinDetails` user selected
    */
    func set(coinDetails: CoinDetails, key: String) {
        guard let data = try? JSONEncoder().encode(coinDetails) else { return }
        cache.setObject(data as NSData, forKey: key as NSString)
    }
    
    /**
     Fetches coin details for the key from the cache.
        - Parameter key: Coin id of `CoinDetails` to be retrieved
    */
    func get(key: String) -> CoinDetails? {
        guard let data = cache.object(forKey: key as NSString) as? Data else { return nil}
        return try? JSONDecoder().decode(CoinDetails.self, from: data)
    }
}
