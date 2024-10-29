//
//  CommentModel.swift
//  Dogy
//
//  Created by Hai Pham on 29/10/2024.
//

import Foundation

struct CommentModel: Identifiable {
    
    var id = UUID().uuidString
    
    var commentID: String
    var userID: String
    var username: String
    var content: String
    var createdDate: Date
    
}
