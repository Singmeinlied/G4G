//
//  MainTabBarController.swift
//  G4G2
//
//  Created by Abai Kush on 3/2/23.
//

import UIKit

class MainTabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBarAppearance()
        setupViewControllers()
    }
    func setupTabBarAppearance(){
        self.tabBar.isTranslucent = true
        self.tabBar.backgroundColor = .white
        self.tabBar.tintColor = UIColor(red: 0.796, green: 0.667, blue: 0.796, alpha: 1)
        self.tabBar.unselectedItemTintColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
        
//        self.tabBar.layer.shadowRadius = 0
//        self.tabBar.layer.shadowOpacity = 1
//        self.tabBar.layer.shadowColor = UIColor.lightGray.cgColor
//        self.tabBar.layer.shadowOffset = CGSize(width: 0, height: -1)
        
        self.selectedIndex = 0
    }
    func setupViewControllers(){
        self.setViewControllers([
//            setupCurrentViewController(.events),
            setupCurrentViewController(.main),
            setupCurrentViewController(.membership),
            setupCurrentViewController(.studyplan),
            setupCurrentViewController(.settings)
        ], animated: false)
    }
    
    func setupCurrentViewController(_ viewControllerType: ViewControllerType) -> UIViewController{
        
        let vc = viewControllerType.viewController
        vc.tabBarItem.image = viewControllerType.unselectedImage
        vc.tabBarItem.selectedImage = viewControllerType.selectedImage
        vc.tabBarItem.title = viewControllerType.title
        
        return vc
    }
}
