//
//  DetailViewController.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/29/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        detailView.configurreViewData(details: detailedViewInformation!)
    }
    
    
    override func loadView() {
        self.view = detailView
    }
    
    //MARK: Properties
  
    private var detailView: DetailView = DetailView()
    var detailedViewInformation: DetailedViewInformation?
    
    //MARK: Methods
    
    
    
    

}
