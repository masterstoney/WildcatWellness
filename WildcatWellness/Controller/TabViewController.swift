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
    private let physicalViewController = CategoryViewController()
    private let socialViewController = CategoryViewController()
    private let mentalViewController = CategoryViewController()
    private let categoryManager = CategoryDataManager()
    
    //MARK: Methods
    
    private func setupView() {
        
        physicalViewController.dataSource = CategoryDataSource(data: categoryManager.getPhysicalData())
        socialViewController.dataSource = CategoryDataSource(data: categoryManager.getSocialData())
        mentalViewController.dataSource = CategoryDataSource(data: categoryManager.getMentalData())
        
        self.viewControllers = [
        setupViewController(vc: dashboardViewController, title: "Dashboard", icon: UIImage(systemName: "slider.horizontal.3")!),
        setupViewController(vc: physicalViewController, title: "Physical", icon: UIImage(systemName: "slider.horizontal.3")!),
        setupViewController(vc: socialViewController, title: "Social", icon: UIImage(systemName: "slider.horizontal.3")!),
        setupViewController(vc: mentalViewController, title: "Mental", icon: UIImage(systemName: "slider.horizontal.3")!)]
        
    }
    
    private func setupViewController(vc: UIViewController, title: String, icon: UIImage) -> UIViewController {
        
        let navController = UINavigationController(rootViewController: vc)
        vc.navigationItem.title = title
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.title = title
        navController.tabBarItem.image = icon
        return navController
    }


}

