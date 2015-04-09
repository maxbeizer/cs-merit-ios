//
//  BadgeTypeTableViewCell.swift
//  cs-merit-ios
//
//  Created by Max Beizer on 4/6/15.
//  Copyright (c) 2015 Max Beizer. All rights reserved.
//

import UIKit

class BadgeTypeTableViewCell: UITableViewCell {
  
  @IBOutlet weak var badgeTypeImage: UIImageView!
  @IBOutlet weak var badgeNameLabel: UILabel!
  @IBOutlet weak var badgeAmountLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func setSelected(selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  
}
