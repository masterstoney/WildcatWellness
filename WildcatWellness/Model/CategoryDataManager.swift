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
        CategoryModel(title: "Steps", description: "Number of steps taken", artwork: UIImage(systemName: "flame")!, leadingGradientColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), trailingGradientColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)),
        CategoryModel(title: "Water", description: "Amount of water consumed", artwork: UIImage(systemName: "flame")!, leadingGradientColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), trailingGradientColor: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
    ]
    
    private var mental: [CategoryModel] = [
        CategoryModel(title: "Steps", description: "Number of steps taken", artwork: UIImage(systemName: "flame")!, leadingGradientColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), trailingGradientColor: #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)),
        CategoryModel(title: "Water", description: "Amount of water consumed", artwork: UIImage(systemName: "flame")!, leadingGradientColor: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), trailingGradientColor: #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1))
    ]
    
    private var social: [CategoryModel] = [
        CategoryModel(title: "Steps", description: "Number of steps taken", artwork: UIImage(systemName: "flame")!, leadingGradientColor: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1), trailingGradientColor: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)),
        CategoryModel(title: "Water", description: "Amount of water consumed", artwork: UIImage(systemName: "flame")!, leadingGradientColor: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), trailingGradientColor: #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1))
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
