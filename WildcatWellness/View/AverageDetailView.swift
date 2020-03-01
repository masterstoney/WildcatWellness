//
//  AverageDetailView.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/29/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class AverageDetailView: UIView {

    //MARK: Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(statInfo: StatisticInformation) {
        self.init()
        self.barView = BarView(backgroundColor: statInfo.barBackgroundColor, progressColor: statInfo.barProgressColor)
        self.statInfo = statInfo
        setupView()
    }
    
    //MARK: Properties
    
    private var averageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont.preferredFont(forTextStyle: .title1).withSize(22)
        label.textColor = .label
        label.text = "Averages"
        return label
    }()
    
    private var segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: ["Daily","Weekly","Monthly"])
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.selectedSegmentIndex = 0
        return segmentedControl
    }()
    
    private var barView: BarView?
    
    private var explanationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .body).withSize(18)
        label.textColor = .secondaryLabel
        label.numberOfLines = 2
        label.text = "This is how good we have been performing over the past couple of"
        return label
    }()
    
    private var statInfo: StatisticInformation?
    
    //MARK: Methods
    
    private func setupView() {
        
        guard let barView = barView else {return}
        barView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(averageLabel)
        addSubview(segmentedControl)
        addSubview(barView)
        addSubview(explanationLabel)
        
        averageLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        averageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        averageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        averageLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        segmentedControl.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        segmentedControl.topAnchor.constraint(equalTo: averageLabel.bottomAnchor, constant: 10).isActive = true
        segmentedControl.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        barView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        barView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        barView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 10).isActive = true
        barView.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        explanationLabel.topAnchor.constraint(equalTo: barView.bottomAnchor, constant: 10).isActive = true
        explanationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        explanationLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        explanationLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
          
    }
    

}
