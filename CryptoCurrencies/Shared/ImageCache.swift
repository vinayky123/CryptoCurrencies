//
//  ImageCache.swift
//  CryptoCurrencies
//
//  Created by Vinay on 29/12/24.
//

import UIKit

/**
 Singleton class for caching Images
 */
final class ImageCache {
    
    // MARK:- Properties

    // Shared instance of this cache class
    static let shared = ImageCache()
    
    // 'private' prevents instatiation of this class from outside of this class
    private init() {}
    
    private let cache = NSCache<NSString, UIImage>()
    
    // MARK:- Methods
    
    /**
     Stores an image in the cache with a specific key.
        - Parameters:
           - image: The `UIImage` to be cached.
           - key: A unique string key to identify the image in the cache.
     */
    func set(image: UIImage, key: String) {
        cache.setObject(image, forKey: key as NSString)
    }
    
    /**
     Retrieves an image from cache with the specified key.
        - Parameter key: A unique string to identify the image from the cache.
     */
    func get(key: String) -> UIImage? {
        return cache.object(forKey: key as NSString)
    }
}
