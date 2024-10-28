//
//  FeedView.swift
//  Dogy
//
//  Created by Hai Pham on 28/10/2024.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject var post: PostArrayObject
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(post.dataArray) { post in
                PostView(post: post)
            }
        }
        .navigationTitle("FeedView")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView(content: {
        FeedView(post: PostArrayObject())
    })
    
}
