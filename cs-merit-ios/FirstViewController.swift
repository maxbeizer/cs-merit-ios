//
//  FirstViewController.swift
//  cs-merit-ios
//
//  Created by Max Beizer on 3/10/15.
//  Copyright (c) 2015 Max Beizer. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    MeritClient.sharedInstance().getBadgeTypes({ (success) -> () in
      if(success) {
        self.tableView.reloadData()
      }
      else {
        self.showAlert("There was a problem getting badge types. Please try again.")
      }
    })
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func showAlert(message: String) {
    let alertController = UIAlertController(title: nil, message: message, preferredStyle: UIAlertControllerStyle.Alert)
    let alertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
    alertController.addAction(alertAction)
    presentViewController(alertController, animated: true, completion: nil)
  }
  
  // MARK: - Table view data source
  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    // #warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete method implementation.
    // Return the number of rows in the section.
    //    return SearchClient.sharedInstace().tracks.count
    return MeritClient.sharedInstance().badgeTypes!.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("badgeTypeCell", forIndexPath: indexPath) as! BadgeTypeTableViewCell
    
    let badgeType = MeritClient.sharedInstance().badgeTypes![indexPath.row]
    cell.badgeNameLabel.text = badgeType.name
    cell.badgeAmountLabel.text = "$\(badgeType.rewardAmount!)"

    return cell
  }
  
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
  }
}