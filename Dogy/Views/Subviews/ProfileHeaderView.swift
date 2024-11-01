//
//  ProfileHeaderView.swift
//  Dogy
//
//  Created by HaiPH on 01/11/2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack {
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120, alignment: .center)
                .cornerRadius(60)
            
            Text("USER NAME HERE")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("This is a description")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
            
            HStack(spacing: 20) {
                VStack(spacing: 5) {
                    Text("5")
                        .font(.title)
                        .fontWeight(.bold)
                    Capsule()
                        .fill(Color.gray)
                        .frame(width: 20, height: 2, alignment: .center)
                    Text("Posts")
                        .font(.callout)
                        .fontWeight(.medium)
                }
                
                VStack(spacing: 5) {
                    Text("20")
                        .font(.title)
                        .fontWeight(.bold)
                    Capsule()
                        .fill(Color.gray)
                        .frame(width: 20, height: 2, alignment: .center)
                    Text("Likes")
                        .font(.callout)
                        .fontWeight(.medium)
                }
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}

#Preview {
    ProfileHeaderView()
}
