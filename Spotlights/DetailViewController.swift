//
//  DetailViewController.swift
//  Spotlights
//
//  Created by Adrian Wu on 02/08/2016.
//  Copyright © 2016 VeganTofu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  var light:Light?
  @IBOutlet weak var lightImageView: UIImageView!
  @IBOutlet weak var lightTitleLabel: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
    guard let light = light else{return}
    lightImageView.image = UIImage(named: light.imageName)
    lightTitleLabel.text = light.name
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  
}
