//
//  MeritClient.swift
//  cs-merit-ios
//
//  Created by Max Beizer on 4/8/15.
//  Copyright (c) 2015 Max Beizer. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MeritClient {
  let apiBaseURL: String = "http://merit.centresource.com/api/v1/"
  var badgeTypes: [BadgeType]? = []
  
  class func sharedInstance() -> MeritClient {
    struct Singleton {
      static let instance = MeritClient()
    }
    return Singleton.instance
  }
  
  func getBadgeTypes(completion: (success: Bool) -> ()) {
    Alamofire.request(.GET, "\(apiBaseURL)badge-types", parameters: ["user_email": "mbeizer@centresource.com", "user_token": "SwDXw3x_gQrjyk_55sXK"])
      .responseJSON() {
        (_, _, data, _) in
        let jsonResponse = JSON(data!)
        self.badgeTypes = jsonResponse.arrayObject?.map { return BadgeType($0 as! NSDictionary) }
        completion(success: true)
    }
  }
  
}
