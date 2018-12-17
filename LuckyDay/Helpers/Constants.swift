//
//  DataManager.swift
//  LuckyDay
//
//  Created by Jason Picallos on 12/17/18.
//  Copyright © 2018 Greek APP. All rights reserved.
//

import Foundation

struct Constants {
   
   struct FlickrURLParams {
      static let APIScheme = "https"
      static let APIHost = "api.flickr.com"
      static let APIPath = "/services/rest"
   }
   
   struct FlickrAPIKeys {
      static let SearchMethod = "method"
      static let APIKey = "api_key"
      static let Extras = "extras"
      static let ResponseFormat = "format"
      static let DisableJSONCallback = "nojsoncallback"
      static let SafeSearch = "safe_search"
      static let Text = "text"
   }
   
   struct FlickrAPIValues {
      static let SearchMethod = "flickr.photos.search"
      static let APIKey = "2d3850a7fa2b7f94311c1123114e1cf3"
      static let ResponseFormat = "json"
      static let DisableJSONCallback = "1"
      static let MediumURL = "url_m"
      static let SafeSearch = "1"
   }
}
