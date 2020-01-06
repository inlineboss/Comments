//
//  NetworkService.swift
//  Comments
//
//  Created by inlineboss on 06.01.2020.
//  Copyright © 2020 inlineboss. All rights reserved.
//

import Foundation

class NetworkService {
    private init(){}
    
    public static var shared = NetworkService()
    
    public func getData(url: URL, completion: @escaping (Any)->()) {
        
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, response, error) in
            if let data = data {
                do {
                    let jsonObject = try JSONSerialization.jsonObject(with: data, options: [])
                    completion(jsonObject)
                } catch  {
                    
                }
            } else { return }
        }.resume()
        
    }
}
