//
//  CoinsCache.swift
//  CryptoCurrencies
//
//  Created by Vinay on 30/12/24.
//

import Foundation

class CoinsCache {
    
    static let shared = CoinsCache()
    private init() {}

    private let cacheKey = "allCoins"
    private var appendedPages = Set<Int>()
    private var cache = NSCache<NSString, NSData>()
    
    //MARK:- Methods
    private func setAllCoins(coins: [Coin]) {
        guard let data = try? JSONEncoder().encode(coins) else { return }
        cache.setObject(data as NSData, forKey: cacheKey as NSString)
    }
    
    func getAllCoins() -> [Coin]? {
        guard let data = cache.object(forKey: cacheKey as NSString) as? Data else { return nil }
        return try? JSONDecoder().decode([Coin].self, from: data)
    }
    
    func appendCoins(newCoins: [Coin], page: Int) {
        // If we already appended this page, skip
        guard !appendedPages.contains(page) else {
            return
        }
        
        let oldCoins = getAllCoins() ?? []
        let combined = oldCoins + newCoins
        setAllCoins(coins: combined)
        appendedPages.insert(page)
    }
    
    func hasPage(page: Int) -> Bool {
        appendedPages.contains(page)
    }
}
