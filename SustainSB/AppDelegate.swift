//
//  AppDelegate.swift
//  SustainSB
//
//  Created by Michelle Nguyen on 1/18/20.
//  Copyright © 2020 Michelle Nguyen. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    window = UIWindow(frame: UIScreen.main.bounds)
    
    let containerViewController = ContainerViewController()
    
    window!.rootViewController = containerViewController
    window!.makeKeyAndVisible()
    
    return true
  }
}

