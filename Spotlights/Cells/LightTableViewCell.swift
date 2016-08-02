//
//  TableViewCell.swift
//  Spotlights
//
//  Created by Adrian Wu on 02/08/2016.
//  Copyright © 2016 VeganTofu. All rights reserved.
//

import UIKit

class LightTableViewCell: UITableViewCell {
  
  @IBOutlet weak var lightImageView: UIImageView!
  @IBOutlet weak var bodyLabel: UILabel!
  @IBOutlet weak var titleLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
}
