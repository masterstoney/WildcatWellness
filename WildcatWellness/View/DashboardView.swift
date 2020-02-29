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
        return view
    }()
    
    //MARK: Methods
    
    private func setupView() {
        
        backgroundColor = .systemBackground
        
        addSubview(barSummaryView)
        barSummaryView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        barSummaryView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        barSummaryView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        barSummaryView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4).isActive = true
        
    }
    

}
