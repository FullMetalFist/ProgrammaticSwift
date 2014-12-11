//
//  ViewController005.swift
//  ProgrammaticSwift
//
//  Created by Michael Vilabrera on 12/10/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

import UIKit

class ViewController005: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 1.0, alpha: 1.0)
        makeLayout()
    }
    // create unsized views, then constrain them programmatically
    func makeLayout() {
        // make view1:
        let view1 = UIView()
        view1.setTranslatesAutoresizingMaskIntoConstraints(false)
        view1.backgroundColor = UIColor.redColor()
        // make view2:
        let view2 = UIView()
        view2.setTranslatesAutoresizingMaskIntoConstraints(false)
        view2.backgroundColor = UIColor.orangeColor()
        // display the views:
        view.addSubview(view1)
        view.addSubview(view2)
        
        // make dictionary
        let viewsDictionary = ["view1":view1, "view2":view2]
        // metrics
        let metricsDictionary = ["view1Height":50.0,"view2Height":40.0,"viewWidth":100.0]
        // size constraints
        // view1
        let view1_constraint_H:Array = NSLayoutConstraint.constraintsWithVisualFormat("H:[view1(viewWidth)]", options: NSLayoutFormatOptions(0), metrics: metricsDictionary, views: viewsDictionary)
        let view1_constraint_V:Array = NSLayoutConstraint.constraintsWithVisualFormat("V:[view1(view1Height)]", options: NSLayoutFormatOptions(0), metrics: metricsDictionary, views: viewsDictionary)
        
        view1.addConstraints(view1_constraint_H)
        view1.addConstraints(view1_constraint_V)
        // view2
        let view2_constraint_H:Array = NSLayoutConstraint.constraintsWithVisualFormat("H:[view2(viewWidth)]", options: NSLayoutFormatOptions(0), metrics: metricsDictionary, views: viewsDictionary)
        let view2_constraint_V:Array = NSLayoutConstraint.constraintsWithVisualFormat("V:[view2(>=view2Height)]", options: NSLayoutFormatOptions(0), metrics: metricsDictionary, views: viewsDictionary)
        view2.addConstraints(view2_constraint_H)
        view2.addConstraints(view2_constraint_V)
        // position constraints
        let view_constraint_H:Array = NSLayoutConstraint.constraintsWithVisualFormat("H:|-[view2]", options: NSLayoutFormatOptions(0), metrics: metricsDictionary, views: viewsDictionary)
        let view_constraint_V:Array = NSLayoutConstraint.constraintsWithVisualFormat("V:|-36-[view1]-[view2]-0-|", options: NSLayoutFormatOptions.AlignAllLeading, metrics: metricsDictionary, views: viewsDictionary)
        view.addConstraints(view_constraint_H)
        view.addConstraints(view_constraint_V)
        
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.All.rawValue)
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
