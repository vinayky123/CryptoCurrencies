//
//  ImageLoader.swift
//  CryptoCurrencies
//
//  Created by Vinay on 29/12/24.
//

import SwiftUI

/**
 Helper class to fetch image asynchronously or from cache.
 */
class ImageLoader: ObservableObject, NetworkManager {
    
    @Published var image: Image?
    @Published var errorMessage: String?

    private let imageUrlString: String
    
    init(imageUrlString: String) {
        
        self.imageUrlString = imageUrlString
        
        Task { await loadImage() }
    }
    
    /**
     Fetches image from the given image url.
     If the image is already cached for the key updates it to image.
    */
    @MainActor
    func loadImage() async {
 
        if let cachedImage = ImageCache.shared.get(key: imageUrlString) {
            self.image = Image(uiImage: cachedImage)
            return
        }
        do {
            guard let url = URL(string: imageUrlString) else { return }
            let (imageData, _) = try await URLSession.shared.data(from: url)
            guard let uIImage  = UIImage(data: imageData) else { return }
            ImageCache.shared.set(image: uIImage, key: imageUrlString)
            self.image = Image(uiImage: uIImage)
        }catch {
            self.errorMessage = error.localizedDescription
        }
    }
}
