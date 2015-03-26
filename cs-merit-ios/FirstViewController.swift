//
//  FirstViewController.swift
//  cs-merit-ios
//
//  Created by Max Beizer on 3/10/15.
//  Copyright (c) 2015 Max Beizer. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
      Alamofire.request(.GET, "http://merit.centresource.com/api/v1/badge-types", parameters: ["user_email": "mbeizer@centresource.com", "user_token": "SwDXw3x_gQrjyk_55sXK"])
        .responseJSON() {
          (_, _, data, _) in
          let foo = JSON(data!)
          println(data)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

