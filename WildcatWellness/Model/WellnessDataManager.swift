//
//  WellnessDataManager.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 3/1/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit
import HealthKit

class WellnessDataManager {
    
    //MARK: Initializers
    
    
    
    //MARK: Properties
    
    let healthStore = HKHealthStore()
    
    var socialData: [(Float,Float)] = [
        (1.0,3.0),
        (3,6)
    ]
    
    var mentalData: [(Float,Float)] = [
        (7.0, 8.0),
        (5.0, 10.0)
    ]
    
    //MARK: Methods
    
    func getTodaysSteps(completion: @escaping (Double) -> Void) {
        
        
        enableHealthKit()
        
        let stepsQuantityType = HKQuantityType.quantityType(forIdentifier: .stepCount)!

        let now = Date()
        let startOfDay = Calendar.current.startOfDay(for: now)
        let predicate = HKQuery.predicateForSamples(withStart: startOfDay, end: now, options: .strictStartDate)

        let query = HKStatisticsQuery(quantityType: stepsQuantityType, quantitySamplePredicate: predicate, options: .cumulativeSum) { _, result, _ in
            guard let result = result, let sum = result.sumQuantity() else {
                completion(0.0)
                return
            }
            completion(sum.doubleValue(for: HKUnit.count()))
        }

        healthStore.execute(query)
    }
    
    
    func enableHealthKit() {
        let shareTypes = Set<HKSampleType>()
        var readTypes = Set<HKObjectType>()
        readTypes.insert(HKQuantityType.quantityType(forIdentifier: .stepCount)!)

        healthStore.requestAuthorization(toShare: shareTypes, read: readTypes) { (success, error) -> Void in
            if success {
                print("success")
            } else {
                print("failure")
            }

            if let error = error { print(error) }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
}
