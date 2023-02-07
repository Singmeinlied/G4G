//
//  ViewControllerType.swift
//  G4G2
//
//  Created by Abai Kush on 3/2/23.
//

import UIKit

enum ViewControllerType{
    
    case studyplan
    case membership
    case main
//    case events
    case settings
    
    var viewController: UIViewController{
        switch self {
        case .studyplan:
            return UINavigationController(rootViewController: StudyPlanVC())
        case .membership:
            return UINavigationController(rootViewController: MembershipVC())
        case .main:
            return UINavigationController(rootViewController: Main())
//        case .events:
//            return UINavigationController(rootViewController: EventsVC())
        case .settings:
            return UINavigationController(rootViewController: SettingsVC())
        }
    }
    
    
    var selectedImage: UIImage{
        switch self {
        case .studyplan:
            return UIImage(named: "StudyPlan")?.withTintColor(UIColor(red: 0.796, green: 0.667, blue: 0.796, alpha: 1)) ?? UIImage()
        case .membership:
            return UIImage(named: "Membership")?.withTintColor(UIColor(red: 0.796, green: 0.667, blue: 0.796, alpha: 1)) ?? UIImage()
        case .main:
            return UIImage(named: "Main")?.withTintColor(UIColor(red: 0.796, green: 0.667, blue: 0.796, alpha: 1)) ?? UIImage()
//        case .events:
//            return UIImage(named: "")?.withTintColor(UIColor(red: 0.796, green: 0.667, blue: 0.796, alpha: 1)) ?? UIImage()
        case .settings:
            return UIImage(named: "Setting")?.withTintColor(UIColor(red: 0.796, green: 0.667, blue: 0.796, alpha: 1)) ?? UIImage()
        }
    }
    
    var unselectedImage: UIImage{
        switch self {
        case .studyplan:
            return UIImage(named: "StudyPlan")?.withTintColor(UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)) ?? UIImage()
        case .membership:
            return UIImage(named: "Membership")?.withTintColor(UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)) ?? UIImage()
        case .main:
            return UIImage(named: "Main")?.withTintColor(UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)) ?? UIImage()
//        case .events:
//            return UIImage(named: "")?.withTintColor(UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)) ?? UIImage()
        case .settings:
            return UIImage(named: "Setting")?.withTintColor(UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)) ?? UIImage()
        }
    }
    
    var title: String{
        switch self {
        
        case .studyplan:
            return "Study plan"
        case .membership:
            return "Membership"
        case .main:
            return "Main"
//        case .events:
//            return "Events"
        case .settings:
            return "Settings"
        }
    }
}
