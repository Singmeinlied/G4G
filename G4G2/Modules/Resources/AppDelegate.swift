//
//  AppDelegate.swift
//  G4G2
//
//  Created by Abai Kush on 3/2/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var navController: UINavigationController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self .window = window
        
        navController = UINavigationController(rootViewController: MainVC())
        navController?.navigationBar.isHidden = true
        window.rootViewController = navController
        window.makeKeyAndVisible()
        
        return true
    }
}

