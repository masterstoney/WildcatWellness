//
//  DashboardViewController.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/28/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit
import QuickLook

class DashboardViewController: UIViewController {

    //MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let wellnessData = WellnessDataManager()
        wellnessData.getTodaysSteps { (steps) in
            print(steps)
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let healthManager = WellnessDataManager()
        healthManager.getTodaysSteps { (steps) in
            DispatchQueue.main.async {
                let record = WellnessRecord(steps: Float(steps), water: 5, sleep: 6, chapel: 7, socialEvents: 2, socialGoals: 3)
                let controlRecord = WellnessRecord(steps: 10000, water: 8, sleep: 8, chapel: 10, socialEvents: 4, socialGoals: 5)
                let viewModel = WellnessViewModel(record: record, controlData: controlRecord)
                self.dashboardView.configureWellnessData(data: viewModel)
            }

        }

    }
    
    override func loadView() {
        self.view = dashboardView
    }
    
    //MARK: Properties
    
    let dashboardView = DashboardView()
    
    //MARK: Methods

    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        let presentedController = ARExerciseViewController()
        navigationController?.pushViewController(presentedController, animated: true)
    }
    
}

