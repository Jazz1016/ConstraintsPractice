//
//  UberTabBarController.swift
//  Uber
//
//  Created by James Lea on 8/23/22.
//

import Foundation
import UIKit

class UberTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().backgroundColor = .white
        UITabBar.appearance().tintColor = .systemGray2
        tabBar.isTranslucent = true
        viewControllers = [createHomeNC(), createAccountNC()]
    }
            
    func createHomeNC() -> UINavigationController {
        let homeVC = HomeVC()
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        return UINavigationController(rootViewController: homeVC)
    }
    
    func createAccountNC() -> UINavigationController {
        let accountVC = AccountVC()
        accountVC.tabBarItem = UITabBarItem(title: "Account", image: UIImage(systemName: "person"), tag: 1)
        return UINavigationController(rootViewController: accountVC)
    }
    
}
