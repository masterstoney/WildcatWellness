//
//  CategoryModel.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/29/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class CategoryModel {
    
    //MARK: Initializers
    
    internal init(title: String, description: String, artwork: UIImage, leadingGradientColor: UIColor, trailingGradientColor: UIColor, arView: Bool = false, currentStat: Float = 0, goalStat: Float = 0) {
        self.title = title
        self.description = description
        self.artwork = artwork
        self.leadingGradientColor = leadingGradientColor
        self.trailingGradientColor = trailingGradientColor
        self.arView = arView
        self.currentStat = currentStat
        self.goalStat = goalStat
    }
    
    //MARK: Properties
    
    var title: String
    var description: String
    var artwork: UIImage
    var leadingGradientColor: UIColor
    var trailingGradientColor: UIColor
    var arView: Bool
    var currentStat: Float
    var goalStat: Float
    
    
    
    
    
    
}
