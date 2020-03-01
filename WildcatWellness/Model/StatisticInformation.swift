//
//  StatisticInformation.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/29/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

enum StatisticOutcome: String {
    case good = "good"
    case bad = "bad"
    case maintained = "maintained"
}

class StatisticInformation {
        
    //MARK: Initializers
    
    internal init(name: String, barProgressColor: UIColor, barBackgroundColor: UIColor, messages: [String:String]) {
        self.name = name
        self.barProgressColor = barProgressColor
        self.barBackgroundColor = barBackgroundColor
        self.messages = messages
    }
    
    //MARK: Properties
    
    var name: String
    var barProgressColor: UIColor
    var barBackgroundColor: UIColor
    var messages: [String:String]
    
    
    //MARK: Methods
    
    func outcomeMessage(outcome: StatisticOutcome) -> String {
        return messages[outcome.rawValue]!
    }
    
}
