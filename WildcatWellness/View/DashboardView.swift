//
//  DashboardView.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/28/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class DashboardView: UIView {

    //MARK: Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: Properties
    
    private var barSummaryView: BarSummaryView = {
        let view = BarSummaryView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 15.0
        view.layer.masksToBounds = true
        return view
    }()
    
    private var dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE MMM d"
        let displaytext = formatter.string(from: date)
        label.text = displaytext
        label.font = .preferredFont(forTextStyle: .title2)
        label.textColor = .label
        return label
    }()
    
    
    //MARK: Methods
    
    private func setupView() {
        
        backgroundColor = .systemBackground
        
        addSubview(barSummaryView)
        addSubview(dateLabel)
        
        dateLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        dateLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        dateLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        dateLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        barSummaryView.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 16).isActive = true
        barSummaryView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        barSummaryView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        barSummaryView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4).isActive = true
        
    }
    
    func configureWellnessData(data: WellnessViewModel) {
        barSummaryView.summarySetup(data: data)
    }
    
    

}
