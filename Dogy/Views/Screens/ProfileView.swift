//
//  ProfileView.swift
//  Dogy
//
//  Created by HaiPH on 01/11/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        ScrollView {
            ProfileHeaderView()
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
                                Button(action: {
            
        }, label: {
            Image(systemName: "line.horizontal.3")
        })
                                    .accentColor(Color.MyTheme.purpleColor)
        )
    }
}

#Preview {
    NavigationView {
        ProfileView()
    }
}
