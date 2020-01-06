//
//  Comment.swift
//  Comments
//
//  Created by inlineboss on 06.01.2020.
//  Copyright © 2020 inlineboss. All rights reserved.
//

import Foundation

struct Comment {
    var postId : Int
    var id: Int
    var name: String
    var email: String
    var body: String
}

extension Comment {
    
    init? (with comment: [String: AnyObject]) {
        
        guard
            let postId = comment["postId"] as? Int,
            let id = comment["id"] as? Int,
            let name = comment["name"] as? String,
            let email = comment["email"] as? String,
            let body = comment["body"] as? String
        else {
            return nil
        }
        
        self.postId = postId
        self.id = id
        self.name = name
        self.email = email
        self.body = body
        
    }
}
