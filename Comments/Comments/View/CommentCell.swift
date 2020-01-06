//
//  CommentCell.swift
//  Comments
//
//  Created by inlineboss on 06.01.2020.
//  Copyright © 2020 inlineboss. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    @IBOutlet weak var namedLabel: UILabel!
    
    @IBOutlet weak var commentLabel: UILabel!
    
    func configure(comment: Comment) {
        namedLabel.text = comment.name
        commentLabel.text = comment.body
    }
}
