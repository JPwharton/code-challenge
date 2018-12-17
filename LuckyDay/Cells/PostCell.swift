//
//  PostCell.swift
//  LuckyDay
//
//  Created by Jason Picallos on 12/17/18.
//  Copyright © 2018 Greek APP. All rights reserved.
//

import UIKit
import SDWebImage

class PostCell: UITableViewCell {
   @IBOutlet weak var backgroundImageView: UIImageView!
   @IBOutlet weak var titleLabel: UILabel!
   
   var post: PhotoDetails? {
      didSet {
         guard let title = post?.title,
            let url = post?.url_m else {  return }
         self.titleLabel.text = title
         self.backgroundImageView.sd_setImage(
            with: URL(string: url),
            completed: nil
         )
      }
   }
}
