//
//  PostArrayObject.swift
//  Dogy
//
//  Created by Hai Pham on 29/10/2024.
//

import Foundation
import SwiftUI

class PostArrayObject: ObservableObject {
    
    @Published
    var dataArray = [PostModel]()
    
    init() {
        print("FETCH FROM DATABASE HERE")
        
        let post1 = PostModel(postID: "", userID: "", username: "HaiPH", caption: "This is HaiPH's dog", dateCreated: Date(), likeCount: 0, likeByUser: false)
        let post2 = PostModel(postID: "", userID: "", username: "KienND", caption: nil, dateCreated: Date(), likeCount: 0, likeByUser: false)
        let post3 = PostModel(postID: "", userID: "", username: "KhoiKB", caption: "This is a really really long caption hahahahaha", dateCreated: Date(), likeCount: 0, likeByUser: false)
        let post4 = PostModel(postID: "", userID: "", username: "TriBQ", caption: nil, dateCreated: Date(), likeCount: 0, likeByUser: false)
    
        self.dataArray.append(post1)
        self.dataArray.append(post2)
        self.dataArray.append(post3)
        self.dataArray.append(post4)
    }
}
