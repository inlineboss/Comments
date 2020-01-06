//
//  GetComments.swift
//  Comments
//
//  Created by inlineboss on 06.01.2020.
//  Copyright © 2020 inlineboss. All rights reserved.
//

import Foundation

struct GetCommentsResponse {
    
    let comments: [Comment]
    
    init?(json: Any) {
        
        guard let source = json as? [[String: AnyObject]] else { return nil }
        
        var commentList = [Comment]()
        
        for dict in source {
            
            guard let comment = Comment(with: dict) else {
                 continue
            }
            commentList.append(comment)
        }
        
         self.comments = commentList
        
    }
}
