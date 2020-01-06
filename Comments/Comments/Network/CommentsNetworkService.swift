//
//  CommentsNetworkService.swift
//  Comments
//
//  Created by inlineboss on 06.01.2020.
//  Copyright © 2020 inlineboss. All rights reserved.
//

import Foundation

class CommentsNetworkService {
    private init(){}
    
    static let defaultUrl = "https://jsonplaceholder.typicode.com/posts/1/comments"
    
    static func pull(competion: @escaping (GetCommentsResponse?) -> ()) {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkService.shared.getData(url: url) { (json) in
            
            let response = GetCommentsResponse (json: json)
            DispatchQueue.main.async {
                competion(response)
            }
            
        }
    }
}
