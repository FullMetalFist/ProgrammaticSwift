//
//  ViewController002.swift
//  ProgrammaticSwift
//
//  Created by Michael Vilabrera on 11/30/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

import UIKit

class ViewController002: UIViewController {
    
    var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "ViewController 002"
        button = UIButton.buttonWithType(.System) as? UIButton
        button.frame = CGRect(x: 110, y: 70, width: 100, height: 44)
        button.setTitle("Press Me", forState: .Normal)
        button.addTarget(self, action: "buttonIsPressed:", forControlEvents: .TouchDown)
        view.addSubview(button)
    }
    
    func buttonIsPressed(sender: UIButton) {
        println("Button is pressed")
        var viewController001 = ViewController001()
        self.navigationController?.pushViewController(viewController001, animated: true)
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
