//
//  Post.swift
//  LuckyDay
//
//  Created by Jason Picallos on 12/17/18.
//  Copyright © 2018 Greek APP. All rights reserved.
//

import Foundation

struct Post: Decodable {
   let photos: Photo
}

struct Photo: Decodable {
   let photo: [PhotoDetails]
}

struct PhotoDetails: Decodable {
   let title: String?
   let url_m: String?
}
