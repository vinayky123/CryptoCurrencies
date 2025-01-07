//
//  CoinsCache.swift
//  CryptoCurrencies
//
//  Created by Vinay on 30/12/24.
//

import Foundation

/**
 This is a singleton class for caching 'Coin' data
 */
final class CoinsCache {
    
    //MARK:- Properties

    // Shared instance of this cache class
    static let shared = CoinsCache()
    
    // 'private' prevents instatiation of this class from outside of this class
    private init() {}

    // Key to store/retreive coin data from cache
    private let cacheKey = Constants.Cache.coinsKey
    
    // Set to track pages cached or not
    private var appendedPages = Set<Int>()
    
    private var cache = NSCache<NSString, NSData>()
    
    //MARK:- Methods
    
    /**
     Stores list of coins in the cache.
        - Parameter coins: An array of `Coin` objects to be cached.
    */
    private func setAllCoins(coins: [Coin]) {
        guard let data = try? JSONEncoder().encode(coins) else { return }
        cache.setObject(data as NSData, forKey: cacheKey as NSString)
    }
    
    /**
     Retrieves list of coins from the cache.
        - Returns: An array of `Coin` objects if available in cache otherwise nil.
    */
    func getAllCoins() -> [Coin]? {
        guard let data = cache.object(forKey: cacheKey as NSString) as? Data else { return nil }
        return try? JSONDecoder().decode([Coin].self, from: data)
    }
    
    /**
     Appends new coins to the existing cache.
     - Parameters:
        - newCoins: An array of new `Coin` objects to be added.
        - page: The page number for the new coins to be stored.
     */
    func appendCoins(newCoins: [Coin], page: Int) {
        // If we already appended this page, skip
        guard !appendedPages.contains(page) else {
            return
        }
        
        // Combine old and new coins data
        let oldCoins = getAllCoins() ?? []
        let combined = oldCoins + newCoins
        
        // Cache and append page number to appendedPages to track the cached pages
        setAllCoins(coins: combined)
        appendedPages.insert(page)
    }
    
    /**
     Verifies if the given page number cached or not.
     - Parameters:
        - newCoins: An array of new `Coin` objects to be added.
        - page: The page number for the new coins to be stored.
     */
    func hasPage(page: Int) -> Bool {
        appendedPages.contains(page)
    }
}
