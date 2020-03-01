//
//  DetailedViewInformation.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 3/1/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class DetailedViewInformation {
    
    init(categoryModel: CategoryModel) {
        self.categoryModel = categoryModel
        self.statisticInformation = StatisticInformation(name: categoryModel.title, barProgressColor: categoryModel.trailingGradientColor, barBackgroundColor: categoryModel.leadingGradientColor, messages: [:])
    }
    
    //MARK: Properties
    
    var categoryModel: CategoryModel
    var statisticInformation: StatisticInformation
    
    //MARK: Methods
    
    
    
    
    
    
    
    
    
    
    
}
