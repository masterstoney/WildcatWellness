//
//  CategoryDataManager.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/29/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class CategoryDataManager {
    
    //MARK: Properties
    
    private var physical: [CategoryModel] = [
        CategoryModel(title: "Steps", description: "Number of steps taken", artwork: #imageLiteral(resourceName: "paw"), leadingGradientColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), trailingGradientColor: #colorLiteral(red: 0.7882352941, green: 0.3647058824, blue: 0.2, alpha: 1), currentStat: 0.0, goalStat: 10000),
        CategoryModel(title: "Water", description: "Amount of water consumed", artwork: #imageLiteral(resourceName: "waterDroplet"), leadingGradientColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), trailingGradientColor: #colorLiteral(red: 0.4117647059, green: 0.5882352941, blue: 0.862745098, alpha: 1), currentStat: 5, goalStat: 8),
        CategoryModel(title: "AR Exercises", description: "Step by step exercise guide in AR", artwork: #imageLiteral(resourceName: "jogger"), leadingGradientColor: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1), trailingGradientColor: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1), arView: true)
    ]
    
    private var mental: [CategoryModel] = [
        CategoryModel(title: "Sleep", description: "Number of hours of sleep", artwork: #imageLiteral(resourceName: "z"), leadingGradientColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), trailingGradientColor: #colorLiteral(red: 0.6352941176, green: 0.3960784314, blue: 0.7725490196, alpha: 1), currentStat: 6, goalStat: 8),
        CategoryModel(title: "Mood", description: "Prevailing mood out of 10", artwork: #imageLiteral(resourceName: "face"), leadingGradientColor: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), trailingGradientColor: #colorLiteral(red: 0.9568627451, green: 0.631372549, blue: 0.2274509804, alpha: 1), currentStat: 7.0, goalStat: 10)
    ]
    
    private var social: [CategoryModel] = [
        CategoryModel(title: "Goals", description: "Social achievements set for self", artwork: #imageLiteral(resourceName: "check"), leadingGradientColor: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1), trailingGradientColor: #colorLiteral(red: 0.3490196078, green: 0.6470588235, blue: 0.6196078431, alpha: 1), currentStat: 2, goalStat: 4),
        CategoryModel(title: "Events", description: "Number of events to attend", artwork: #imageLiteral(resourceName: "cal"), leadingGradientColor: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), trailingGradientColor: #colorLiteral(red: 0.9490196078, green: 0.5725490196, blue: 0.4039215686, alpha: 1), currentStat: 3, goalStat: 5)
    ]
    
    //MARK: Properties
    
    func getPhysicalData() -> [CategoryModel] {
        return physical
    }
    
    func getMentalData() -> [CategoryModel] {
        return mental
    }
    
    func getSocialData() -> [CategoryModel] {
        return social
    }
    
    
}
