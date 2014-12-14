//
//  AppDelegate.swift
//  ProgrammaticSwift
//
//  Created by Michael Vilabrera on 11/21/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coder: NSCoder!
    
    /* create major view controllers:
    
    ViewController001() -> initial
    ViewController002() -> for programmatic push segues with navigationController
    ViewController003() -> show a table view
    ViewController004() -> show a collection view
    ViewController005() -> show autoLayout
    
    ViewController006() -> from tutorial
    ViewController007() -> mapKit attempt
    */

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        coder = NSCoder()
//        var viewController001 = ViewController001()
//        var viewController002 = ViewController002()
//        var navigationController = UINavigationController(rootViewController: viewController002)
//        var viewController003 = ViewController003()
//        var viewController004 = ViewController004()
        var viewController007 = ViewController007(coder: coder)
        window?.backgroundColor = UIColor.whiteColor()
//        window?.rootViewController = navigationController
        window?.rootViewController = viewController007
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

