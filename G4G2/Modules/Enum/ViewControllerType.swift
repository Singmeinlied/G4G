//
//  ViewControllerType.swift
//  G4G2
//
//  Created by Abai Kush on 3/2/23.
//

import UIKit

enum ViewControllerType{
    
    case studyplan
    case projects
    case main
    case settings
    
    var viewController: UIViewController{
        switch self {
        case .studyplan:
            return UINavigationController(rootViewController: StudyPlanVC())
        case .projects:
            return UINavigationController(rootViewController: MembershipVC())
        case .main:
            return UINavigationController(rootViewController: MainVC())
        case .settings:
            return UINavigationController(rootViewController: SettingsVC())
        }
    }
    
    
    var selectedImage: UIImage{
        switch self {
        case .studyplan:
            return UIImage(named: "StudyPlan")?.withTintColor(UIColor(red: 0.501, green: 0.276, blue: 0.642, alpha: 1)) ?? UIImage()
        case .projects:
            return UIImage(named: "Projects")?.withTintColor(UIColor(red: 0.501, green: 0.276, blue: 0.642, alpha: 1)) ?? UIImage()
        case .main:
            return UIImage(named: "Home")?.withTintColor(UIColor(red: 0.501, green: 0.276, blue: 0.642, alpha: 1)) ?? UIImage()
        case .settings:
            return UIImage(named: "Setting")?.withTintColor(UIColor(red: 0.501, green: 0.276, blue: 0.642, alpha: 1)) ?? UIImage()
        }
    }
    
    var unselectedImage: UIImage{
        switch self {
        case .studyplan:
            return UIImage(named: "StudyPlan")?.withTintColor(UIColor(red: 0.56, green: 0.541, blue: 0.729, alpha: 1)) ?? UIImage()
        case .projects:
            return UIImage(named: "Projects")?.withTintColor(UIColor(red: 0.56, green: 0.541, blue: 0.729, alpha: 1)) ?? UIImage()
        case .main:
            return UIImage(named: "Home")?.withTintColor(UIColor(red: 0.56, green: 0.541, blue: 0.729, alpha: 1)) ?? UIImage()
        case .settings:
            return UIImage(named: "Setting")?.withTintColor(UIColor(red: 0.56, green: 0.541, blue: 0.729, alpha: 1)) ?? UIImage()
        }
    }
    
    var title: String{
        switch self {
        
        case .studyplan:
            return "Видеоблог"
        case .projects:
            return "Проекты"
        case .main:
            return "Главная"
        case .settings:
            return "Профиль"
        }
    }
}
