//
//  DashboardViewController.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/28/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {

    //MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let record = WellnessRecord(steps: 4000, water: 3, sleep: 6.5, chapel: 24, socialEvents: 1, socialGoals: 4)
        let controlRecord = WellnessRecord(steps: 10000, water: 8, sleep: 9, chapel: 35, socialEvents: 4, socialGoals: 10)
        let viewModel = WellnessViewModel(record: record, controlData: controlRecord)
        dashboardView.configureWellnessData(data: viewModel)
    }
    
    override func loadView() {
        self.view = dashboardView
    }
    
    //MARK: Properties
    
    let dashboardView = DashboardView()
    
    //MARK: Methods

}
