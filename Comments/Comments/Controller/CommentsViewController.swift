//
//  ViewController.swift
//  Comments
//
//  Created by inlineboss on 06.01.2020.
//  Copyright © 2020 inlineboss. All rights reserved.
//

import UIKit

class CommentsViewController: UIViewController {
    
    var comments = [Comment]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        CommentsNetworkService.pull { (response) in
            self.comments = response?.comments ?? [Comment]()
            self.tableView.reloadData()
        }
    }
    
}

extension CommentsViewController: UITableViewDelegate { }

extension CommentsViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return comments.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusableCell") as! CommentCell
        cell.configure(comment: comments[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190
    }
    
}
