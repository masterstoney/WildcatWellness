//
//  WellnessViewModel.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/29/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

/**Properties to configure BarSummaryView*/
class WellnessViewModel {
    
    //MARK: Initializers
    
    init(record: WellnessRecord, controlData: WellnessRecord) {
        self.record = record
        self.controlData = controlData
    }
    
    //MARK: Properties
    
    private var record: WellnessRecord
    private var controlData: WellnessRecord
    
    
    //MARK: Methods
    
    func getStepsProgress() -> WellnessEvent {
        return WellnessEvent(progress: CGFloat(record.steps/controlData.steps), rawData: CGFloat(record.steps))
    }
    
    func getWaterProgress() -> WellnessEvent {
        return WellnessEvent(progress: CGFloat(record.water/controlData.water), rawData: CGFloat(record.water))
    }
    
    func getSleepProgress() -> WellnessEvent {
        return WellnessEvent(progress: CGFloat(record.sleep/controlData.sleep), rawData: CGFloat(record.sleep))
    }
    
    func getChapelProgress() -> WellnessEvent {
        return WellnessEvent(progress: CGFloat(record.chapel/controlData.chapel), rawData: CGFloat(record.chapel))
    }
    
    func getEventProgress() -> WellnessEvent {
        return WellnessEvent(progress: CGFloat(record.socialEvents/controlData.socialEvents), rawData: CGFloat(record.socialEvents))
    }
    
    func getSocialProgress() -> WellnessEvent {
        return WellnessEvent(progress: CGFloat(record.socialGoals/controlData.socialGoals), rawData: CGFloat(record.socialGoals))
    }
    
    
    
    
    
}
