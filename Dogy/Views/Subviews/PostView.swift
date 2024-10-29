//
//  PostView.swift
//  Dogy
//
//  Created by Hai Pham on 28/10/2024.
//

import SwiftUI

struct PostView: View {
    
    @State var post: PostModel
    
    var body: some View {
        // MARK: Header
        HStack {
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 30, height: 30)
                .cornerRadius(15)
            Text(post.username)
                .font(.title3)
                .fontWeight(.medium)
                .foregroundColor(.primary)
            Spacer()
            Image(systemName: "ellipsis")
                .font(.headline)
        }
        .padding(.all, 6)
        
        // MARK: Image
        Image("dog1")
            .resizable()
            .scaledToFit()
        
        // MARK: Footer
        HStack(spacing: 20) {
            Image(systemName: "heart")
                .font(.title3)
            
            // MARK: Comment Icon
            NavigationLink {
                CommentsView()
            } label: {
                Image(systemName: "bubble.middle.bottom")
                    .font(.title3)
                    .foregroundColor(.primary)
            }

            Image(systemName: "paperplane")
                .font(.title3)
            Spacer()
        }
        .padding(.all, 6)
        
        if let caption = post.caption {
            HStack {
                Text(caption)
                Spacer(minLength: 0)
            }
            .padding(.all, 6)
        }
    }
}

#Preview {
    PostView(post: PostModel(postID: "", userID: "", username: "HaiPH", caption: "This is HaiPH's dog!!", dateCreated: Date(), likeCount: 0, likeByUser: false))
}
