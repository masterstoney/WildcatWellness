//
//  BarSummaryView.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/29/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class BarSummaryView: UIView {

    //MARK: Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Properties
    
    private var stepsBar: BarView = BarView(backgroundColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), progressColor: #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1), icon: #imageLiteral(resourceName: "paw"))
    private var waterBar: BarView = BarView(backgroundColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), progressColor: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), icon: #imageLiteral(resourceName: "waterDroplet"))
    private var sleepBar: BarView = BarView(backgroundColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), progressColor: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1), icon: #imageLiteral(resourceName: "z"))
    private var chapelBar: BarView = BarView(backgroundColor: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1), progressColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), icon: #imageLiteral(resourceName: "face"))
    private var eventsBar: BarView = BarView(backgroundColor: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), progressColor: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), icon: #imageLiteral(resourceName: "check"))
    private var socialGoalsBar: BarView = BarView(backgroundColor: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), progressColor: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), icon: #imageLiteral(resourceName: "cal"))
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
        stepsBar,
        waterBar,
        sleepBar,
        chapelBar,
        eventsBar,
        socialGoalsBar])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    //MARK: Methods
    
    private func setupView() {
        
        addSubview(stackView)
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
    }

    func summarySetup(data: WellnessViewModel) {
        
        stepsBar.configureEvent(event: data.getStepsProgress())
        waterBar.configureEvent(event: data.getWaterProgress())
        sleepBar.configureEvent(event: data.getSleepProgress())
        chapelBar.configureEvent(event: data.getChapelProgress())
        eventsBar.configureEvent(event: data.getEventProgress())
        socialGoalsBar.configureEvent(event: data.getSocialProgress())
         
    }
    
    
}
