//
//  ViewController.swift
//  Spotlights
//
//  Created by Adrian Wu on 02/08/2016.
//  Copyright © 2016 VeganTofu. All rights reserved.
//

import UIKit

let segueName = "lightToDetailSegue"

class ViewController: UIViewController {
  var lights:[Light]?
  var selectedLight:Light?
  @IBOutlet weak var tableView: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
    lights = createDummyLights()
    tableView.reloadData()
  }
  
  override func restoreUserActivityState(activity: NSUserActivity) {
    
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    guard let segueDestination = segue.identifier else{return}
    switch segueDestination {
    case "lightToDetailSegue":
      if let detailVC = segue.destinationViewController as? DetailViewController{
        detailVC.light = selectedLight
      }
    default:
      break
    }
  }
}

extension ViewController:UITableViewDelegate, UITableViewDataSource{
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return lights?.count ?? 0
  }
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("LightTableViewCell") as! LightTableViewCell
    if let light = lights?[indexPath.row]{
      cell.lightImageView.image = UIImage(named: light.imageName)
      cell.titleLabel.text = light.name
    }
    
    return cell
  }
  
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    if let light = lights?[indexPath.row]{
      selectedLight = light
    }
    performSegueWithIdentifier(segueName, sender: nil)
  }
}

