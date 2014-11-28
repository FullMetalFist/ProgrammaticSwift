//
//  ViewController.swift
//  ProgrammaticSwift
//
//  Created by Michael Vilabrera on 11/21/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label = UILabel(frame: CGRect(x: 20, y: 100, width: 150, height: 23))
        label.text = "Done Without IB"
        label.font = UIFont.boldSystemFontOfSize(14)
        view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

