//
//  SubTableCellTableViewCell.swift
//  NestedTables
//
//  Created by Asia on 12/27/17.
//  Copyright © 2017 Elnemer. All rights reserved.
//

import UIKit


class SubTableCellTableViewCell: UITableViewCell , UITableViewDelegate , UITableViewDataSource {

  @IBOutlet var tableView : UITableView!

  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    self.tableView.estimatedRowHeight = 300
    self.tableView.tableFooterView = UIView()
    }

  override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
  
  func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return 3
  }
  
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "reuseCell", for: indexPath)
    cell.textLabel?.text = "cell section = \(indexPath.section) row = \(indexPath.row)"
    // Configure the cell...
    
    return cell
  }
  
}
