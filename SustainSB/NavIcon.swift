//
//  NavIcon.swift
//  SustainSB
//
//  Created by Michelle Nguyen on 1/18/20.
//  Copyright © 2020 Michelle Nguyen. All rights reserved.
//

import UIKit

struct NavIcon {
  let title: String
  let image: UIImage?
  
  init(title: String, image: UIImage?) {
    self.title = title
    self.image = image
  }
  
  static func allIcons() -> [NavIcon] {
    return [
      NavIcon(title: "Eat", image: UIImage(named: "eat.png")),
      NavIcon(title: "Drink", image: UIImage(named: "drink.png")),
      NavIcon(title: "See", image: UIImage(named: "see.png")),
      NavIcon(title: "Study", image: UIImage(named: "study.png")),
      NavIcon(title: "Recycle", image: UIImage(named: "recycle.png")),
    ]
  }
}
