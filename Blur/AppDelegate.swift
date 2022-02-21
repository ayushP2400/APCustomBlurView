//
//  AppDelegate.swift
//  Blur
//
//  Created by Collin Hundley on 1/16/16.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let mainViewController = MainViewController()
        self.window!.rootViewController = mainViewController
        self.window!.makeKeyAndVisible()
        
        return true
    }
    
}
