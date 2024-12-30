//
//  ImageLoader.swift
//  CryptoCurrencies
//
//  Created by Vinay on 29/12/24.
//

import SwiftUI

class ImageLoader: ObservableObject, NetworkManager {
    @Published var image: Image?
    
    private let imageUrlString: String
    
    init(imageUrlString: String) {
        self.imageUrlString = imageUrlString
        
        Task { await loadImage()}
    }
    
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
        }
    }
}
