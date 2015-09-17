//
//  PaletteViewController.swift
//  ColorBoard
//
//  Created by James Roland on 9/17/15.
//  Copyright (c) 2015 LinkedIn. All rights reserved.
//

import UIKit

class PaletteViewController : UITableViewController {
    var colors: [ColorDescription] = [ColorDescription()]
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = colors[indexPath.row].name
        return cell
    }
}