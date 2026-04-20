//
//  ImageLoaderView.swift
//  AIChatCourse
//
//  Created by leila on 15.04.26.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderView: View {
    
    var urlString: String = Constants.randomImage
    var resizingMode: ContentMode = .fill
    
    var body: some View {
        Rectangle()
            .opacity(0)
            .overlay {
                WebImage(url: URL(string: urlString))
                     .resizable()
                     .indicator(.activity)
                     .aspectRatio(contentMode: resizingMode)
                     .allowsHitTesting(false)
            }
            .clipped()
    }
}

#Preview {
    ImageLoaderView()
}
