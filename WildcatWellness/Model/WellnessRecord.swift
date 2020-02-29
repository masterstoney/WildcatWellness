//
//  WellnessEvent.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/29/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

/***/
class WellnessRecord {

    //MARK: Initializers

    internal init(steps: Float, water: Float, sleep: Float, chapel: Float, socialEvents: Float, socialGoals: Float) {
        self.steps = steps
        self.water = water
        self.sleep = sleep
        self.chapel = chapel
        self.socialEvents = socialEvents
        self.socialGoals = socialGoals
    }
    
    //MARK: Properties
    
    /**Number of steps covered*/
    var steps: Float
    
    /**Cups of water consumed*/
    var water: Float
    
    /**Number of hours of sleep recorded*/
    var sleep: Float
    
    /**Number of chapel credits*/
    var chapel: Float
    
    /**Number of social events attended*/
    var socialEvents: Float
    
    /**Number of social goals*/
    var socialGoals: Float
    
    
    //MARK: Methods
    
    
    
    
    
    
    
}
