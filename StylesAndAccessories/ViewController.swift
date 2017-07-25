//
//  ViewController.swift
//  StylesAndAccessories
//
//  Created by Josiah Mory on 7/25/17.
//  Copyright © 2017 kickinbahk Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    
    cell.textLabel?.text = "Accessorize Me!"
    
    switch indexPath.row {
    case 0:
      cell.accessoryType = .checkmark
    case 1:
      cell.accessoryType = .detailButton
    case 2:
      cell.accessoryType = .detailDisclosureButton
    case 3:
      cell.accessoryType = .disclosureIndicator
    case 4:
      cell.accessoryType = .none
    default:
      break
    }
    
    return cell
  }
}

extension ViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
    print("\(indexPath.row) was selected")
  }
}
