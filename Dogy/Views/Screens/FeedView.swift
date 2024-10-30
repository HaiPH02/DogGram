//
//  FeedView.swift
//  Dogy
//
//  Created by Hai Pham on 28/10/2024.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject var post: PostArrayObject
    var title: String
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(post.dataArray) { post in
                PostView(post: post, showHeaderAndFooter: true)
            }
        }
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView(content: {
        FeedView(post: PostArrayObject(), title: "FEED VIEW")
    })
    
}
