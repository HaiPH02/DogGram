//
//  ImageGridView.swift
//  Dogy
//
//  Created by Hai Pham on 30/10/2024.
//

import SwiftUI

struct ImageGridView: View {
    
    @ObservedObject var posts: PostArrayObject
    
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ],
                  alignment: .center,
                  pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/,
                  content: {
            ForEach(posts.dataArray) { post in
                NavigationLink {
                    FeedView(post: PostArrayObject(post: post), title: "Post")
                } label: {
                    PostView(post: post, showHeaderAndFooter: false)
                }
            }
        })
    }
}

#Preview {
    ImageGridView(posts: PostArrayObject())
}
