//
//  APIHelper.swift
//  LuckyDay
//
//  Created by Jason Picallos on 12/17/18.
//  Copyright © 2018 Greek APP. All rights reserved.
//

import Foundation

class APIHelper {
   public func urlFromParameters(searchString: String) -> URL? {
      
      // Build base URL
      var components = URLComponents()
      components.scheme = Constants.FlickrURLParams.APIScheme
      components.host = Constants.FlickrURLParams.APIHost
      components.path = Constants.FlickrURLParams.APIPath
      
      // Build query string
      components.queryItems = [URLQueryItem]()
      
      // Query components
      components.queryItems?.append(URLQueryItem(name: Constants.FlickrAPIKeys.APIKey, value: Constants.FlickrAPIValues.APIKey))
      components.queryItems?.append(URLQueryItem(name: Constants.FlickrAPIKeys.SearchMethod, value: Constants.FlickrAPIValues.SearchMethod))
      components.queryItems?.append(URLQueryItem(name: Constants.FlickrAPIKeys.ResponseFormat, value: Constants.FlickrAPIValues.ResponseFormat))
      components.queryItems?.append(URLQueryItem(name: Constants.FlickrAPIKeys.Extras, value: Constants.FlickrAPIValues.MediumURL))
      components.queryItems?.append(URLQueryItem(name: Constants.FlickrAPIKeys.SafeSearch, value: Constants.FlickrAPIValues.SafeSearch))
      components.queryItems?.append(URLQueryItem(name: Constants.FlickrAPIKeys.DisableJSONCallback, value: Constants.FlickrAPIValues.DisableJSONCallback))
      components.queryItems?.append(URLQueryItem(name: Constants.FlickrAPIKeys.Text, value: searchString))
      
      return components.url
   }

}
