//
//  ImageCache.swift
//  CryptoCurrencies
//
//  Created by Vinay on 29/12/24.
//

import UIKit

class ImageCache {
    static let shared = ImageCache()
    
    private let cache = NSCache<NSString, UIImage>()
    
    func set(image: UIImage, key: String) {
        cache.setObject(image, forKey: key as NSString)
    }
    
    func get(key: String) -> UIImage? {
        return cache.object(forKey: key as NSString)
    }
}
