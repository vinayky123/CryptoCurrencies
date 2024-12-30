//
//  CoinDetailsCache.swift
//  CryptoCurrencies
//
//  Created by Vinay on 29/12/24.
//

import Foundation

class CoinDetailsCache {
    
    static let shared = CoinDetailsCache()
    private init() {}
    
    private var cache = NSCache<NSString, NSData>()
    
    //MARK:- Methods
    func set(coinDetails: CoinDetails, key: String) {
        guard let data = try? JSONEncoder().encode(coinDetails) else { return }
        cache.setObject(data as NSData, forKey: key as NSString)
    }
    
    func get(key: String) -> CoinDetails? {
        guard let data = cache.object(forKey: key as NSString) as? Data else { return nil}
        return try? JSONDecoder().decode(CoinDetails.self, from: data)
    }
}
