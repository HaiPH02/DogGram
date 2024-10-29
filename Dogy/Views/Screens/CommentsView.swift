//
//  CommentsView.swift
//  Dogy
//
//  Created by Hai Pham on 29/10/2024.
//

import SwiftUI

struct CommentsView: View {
    
    @State var submissionText: String = ""
    @State var commentArray = [CommentModel]()
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(commentArray) { comment in
                    MessageView(comment: comment)
                }
                
            }
            
            HStack {
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(20)
                
                TextField("Add a comment here...", text: $submissionText)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "paperplane.fill")
                        .font(.title2)
                })
                .tint(Color.MyTheme.purpleColor)
            }
            .padding(.all, 6)
        }
        .navigationTitle("Comment")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear(perform: {
            getComments()
        })
    }
    
    private func getComments() {
        
        print("GET COMMENT FROM DATABASE")
        
        let comment1 = CommentModel(commentID: "", userID: "", username: "HaiPH", content: "This is a new comment!", createdDate: Date())
        
        let comment2 = CommentModel(commentID: "", userID: "", username: "KienND", content: "This is a second comment!", createdDate: Date())
        
        let comment3 = CommentModel(commentID: "", userID: "", username: "KhoiKB", content: "This is a third comment!", createdDate: Date())
        
        let comment4 = CommentModel(commentID: "", userID: "", username: "TriBQ", content: "This is a fourth comment!", createdDate: Date())
        
        commentArray.append(comment1)
        commentArray.append(comment2)
        commentArray.append(comment3)
        commentArray.append(comment4)
    }
}

#Preview {
    NavigationView(content: {
        CommentsView()
    })
    
}
