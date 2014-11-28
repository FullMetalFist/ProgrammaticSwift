//
//  ViewControllerTwo.swift
//  ProgrammaticSwift
//
//  Created by Michael Vilabrera on 11/24/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {
    
    var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "ViewControllerTwo"
        
        button = UIButton.buttonWithType(.System) as? UIButton
        button.frame = CGRect(x: 110, y: 70, width: 100, height: 44)
        button.setTitle("Press Me", forState: .Normal)
        button.setTitle("I'm Pressed", forState: .Highlighted)
        button.addTarget(self, action: "buttonIsPressed:", forControlEvents: .TouchDown)
        button.addTarget(self, action: "buttonIsTapped", forControlEvents: .TouchUpInside)
        view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buttonIsPressed(sender: UIButton) {
        println("Button is pressed")
        // without navController, there will be no return- or an infinite stack
        var viewController = ViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func buttonIsTapped(sender: UIButton) {
        println("Button is tapped")
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
