//
//  IconCell.swift
//  SustainSB
//
//  Created by Michelle Nguyen on 1/18/20.
//  Copyright © 2020 Michelle Nguyen. All rights reserved.
//

import UIKit

class IconCell: UITableViewCell {
  @IBOutlet weak var iconImageView: UIImageView!
  @IBOutlet weak var imageNameLabel: UILabel!
  
  func configureForIcon(_ icon: NavIcon) {
    iconImageView.image = icon.image
    imageNameLabel.text = icon.title
  }
}
