//
//  BrowseView.swift
//  Dogy
//
//  Created by Hai Pham on 29/10/2024.
//

import SwiftUI

struct BrowseView: View {
    
    var body: some View {
        ScrollView {
            CarouselView()
            ImageGridView(posts: PostArrayObject())
        }
        .navigationTitle("Browse")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView(content: {
        BrowseView()
    })
}
