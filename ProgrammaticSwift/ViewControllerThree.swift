//
//  ViewControllerThree.swift
//  ProgrammaticSwift
//
//  Created by Michael Vilabrera on 11/28/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

import UIKit
                                        /* required: numberOfRowsInSection &&
                                                     cellForRowAtIndexPath */
class ViewControllerThree: UIViewController, UITableViewDataSource {

    var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView = UITableView(frame: view.bounds, style: .Plain)
        
        if let newTableView = tableView {
            newTableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "identifier")
            newTableView.dataSource = self
            newTableView.autoresizingMask = .FlexibleWidth | .FlexibleHeight
            
            view.addSubview(newTableView)
        }
    }
    
    // not required for dataSource importing
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    // required for dataSource conforming
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 3
        case 1:
            return 5
        case 2:
            return 8
        default:
            return 0
        }
    }
    
    // required for dataSource conforming
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //code
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("identifier", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = "Section \(indexPath.section) Cell \(indexPath.row)"
        return cell
    }
    
    // not required for dataSource importing
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
