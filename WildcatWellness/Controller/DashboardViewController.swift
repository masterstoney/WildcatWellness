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
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
    }
    
    //MARK: Properties
    
    let experimentBar = BarView(backgroundColor: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1), progressColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
    
    //MARK: Methods
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        experimentBar.configureProgress(progress: 100)
        
    }
    


}
