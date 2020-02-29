//
//  CategoryViewController.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/29/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UICollectionViewDelegateFlowLayout {

    //MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        guard let dataSource = dataSource else {return}
        categoryView.collectionView.dataSource = dataSource
        categoryView.collectionView.delegate = self
        self.view = categoryView
    }
    
    //MARK: Properties
    
    private var categoryView: CategoryView = CategoryView()
    var dataSource: CategoryDataSource?
    
    //MARK: Methods
    
    
    


}
