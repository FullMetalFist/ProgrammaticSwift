//
//  ViewController003.swift
//  ProgrammaticSwift
//
//  Created by Michael Vilabrera on 11/30/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

import UIKit

class ViewController003: UIViewController, UITableViewDataSource {

    var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView = UITableView(frame:CGRect(x: 10, y: 10, width: 350, height: 400), style: .Plain)
        if let newTable = tableView {
            newTable.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "ident")
            newTable.dataSource = self
            newTable.autoresizingMask = .FlexibleWidth | .FlexibleHeight
            view.addSubview(newTable)
        }
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
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
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("ident", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = "Section \(indexPath.section) Cell \(indexPath.row)"
        return cell
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
