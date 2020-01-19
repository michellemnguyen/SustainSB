//
//  CenterViewController.swift
//  SustainSB
//
//  Created by Michelle Nguyen on 1/18/20.
//  Copyright © 2020 Michelle Nguyen. All rights reserved.
//

import UIKit

class CenterViewController: UIViewController {
@IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var titleLabel: UILabel!
  
  var delegate: CenterViewControllerDelegate?
  
  // MARK: Button actions
  @IBAction func iconsTapped(_ sender: Any) {
    delegate?.toggleLeftPanel()
  }
}

extension CenterViewController: NavBarViewControllerDelegate {
  func didSelectIcon(_ icon: NavIcon) {
    imageView.image = icon.image
    titleLabel.text = icon.title
    
    delegate?.collapseNavBar()
  }
}

protocol CenterViewControllerDelegate {
  func toggleLeftPanel()
  func collapseNavBar()
}

