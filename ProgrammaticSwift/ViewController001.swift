//
//  ViewController001.swift
//  ProgrammaticSwift
//
//  Created by Michael Vilabrera on 11/30/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

import UIKit

class ViewController001: UIViewController {
    
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "ViewController 001"
        label = UILabel(frame: CGRect(x: 20, y: 100, width: 150, height: 23))
        label.text = "Done Without IB"
        label.font = UIFont.boldSystemFontOfSize(14)
        view.addSubview(label)
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
