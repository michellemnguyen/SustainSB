//
//  NavBarViewController.swift
//  SustainSB
//
//  Created by Michelle Nguyen on 1/18/20.
//  Copyright © 2020 Michelle Nguyen. All rights reserved.
//

import UIKit

class NavBarViewController: UIViewController {
  @IBOutlet weak var tableView: UITableView!
  
  var delegate: NavBarViewControllerDelegate?
  
  var icons: [NavIcon]!
  
  enum CellIdentifiers {
    static let IconCell = "IconCell"
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.reloadData()
  }
}

// MARK: Table View Data Source
extension NavBarViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return icons.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.IconCell, for: indexPath) as! IconCell
    cell.configureForIcon(icons[indexPath.row])
    return cell
  }
}

// Mark: Table View Delegate

extension NavBarViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let icon = icons[indexPath.row]
    delegate?.didSelectIcon(icon)
  }
}

protocol NavBarViewControllerDelegate {
  func didSelectIcon(_ icon: NavIcon)
}
