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
        
        if let user = UserDefaults.standard.string(forKey: "login"){
            if user.isEmpty{
                guestPart()
            } else{
                guestPart()
            }
        } else{
            guestPart()
        }
        
        window.makeKeyAndVisible()
        
        return true
    }
    
    func WelcomePage(){
        self.window?.rootViewController = navController(vc: LoginViewController())
    }
    
    func guestPart(){
        self.window?.rootViewController = navController(vc: MainTabBarController())
    }
    
    func navController(vc: UIViewController) -> UINavigationController{
        
        let viewController = UINavigationController(rootViewController: vc)
        viewController.navigationBar.isHidden = true
        
        return viewController
    }
    
    
}

