//
//  PostModel.swift
//  Dogy
//
//  Created by Hai Pham on 28/10/2024.
//

import Foundation

struct PostModel: Identifiable {
    var id = UUID().uuidString
    
    var postID: String
    var userID: String
    var username: String
    var caption: String?
    var dateCreated: Date
    var likeCount: Int
    var likeByUser: Bool
    
}
