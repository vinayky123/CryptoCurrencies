//
//  CoinImageView.swift
//  CryptoCurrencies
//
//  Created by Vinay on 29/12/24.
//

import SwiftUI

/**
 Custom Image View loads image for the image url provided
 */
struct CoinImageView: View {
    
    @ObservedObject var imageLoader: ImageLoader
    
    init(url: String) {
        self.imageLoader = ImageLoader(imageUrlString: url)
    }
    
    var body: some View {
        if let image = imageLoader.image {
            image
                .resizable()
        }
    }
}

#Preview {
    CoinImageView(url: "")
}
