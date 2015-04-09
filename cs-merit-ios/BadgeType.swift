//
//  BadgeType.swift
//  cs-merit-ios
//
//  Created by Max Beizer on 4/8/15.
//  Copyright (c) 2015 Max Beizer. All rights reserved.
//

import Foundation
import UIKit

class BadgeType: NSObject {
  
  var name: String?
  var completionCredits: String?
  var rewardCount: String?
  var badgeTypeDescription: String?
  
  required init(_ badgeTypeDictionary: NSDictionary) {
    super.init()
    
    name = badgeTypeDictionary["name"] as? String
    completionCredits = badgeTypeDictionary["completion_credits"] as? String
    rewardCount = badgeTypeDictionary["reward_count"] as? String
    badgeTypeDescription = badgeTypeDictionary["description"] as? String
    
  }
}