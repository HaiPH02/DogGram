//
//  PostView.swift
//  Dogy
//
//  Created by Hai Pham on 28/10/2024.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        // MARK: Header
        HStack {
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 30, height: 30)
                .cornerRadius(15)
            Text("User name hers")
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
            Image(systemName: "bubble.middle.bottom")
                .font(.title3)
            Image(systemName: "paperplane")
                .font(.title3)
            Spacer()
        }
        .padding(.all, 6)
        
        HStack {
            Text("This is the caption for the photo!")
            Spacer(minLength: 0)
        }
        .padding(.all, 6)
    }
}

#Preview {
    PostView()
}
