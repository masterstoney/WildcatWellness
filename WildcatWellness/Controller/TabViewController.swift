//
//  ViewController.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/28/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {

    //MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    //MARK: Properties
    
    private let dashboardViewController = DashboardViewController()
    
    //MARK: Methods
    
    private func setupView() {
        
        self.viewControllers = [
        setupViewController(vc: dashboardViewController, title: "Dashboard", icon: UIImage(systemName: "slider.horizontal.3")!)]
        
    }
    
    private func setupViewController(vc: UIViewController, title: String, icon: UIImage) -> UIViewController {
        
        let navController = UINavigationController(rootViewController: vc)
        navController.navigationBar.isHidden = true
        navController.tabBarItem.title = title
        navController.tabBarItem.image = icon
        return navController
    }


}

