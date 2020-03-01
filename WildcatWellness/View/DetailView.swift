//
//  DetailView.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/29/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class DetailView: UIView {

    //MARK: Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {

    }
    
    //MARK: Properties
    
    private var iconimageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "flame")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .label
        label.font = UIFont.preferredFont(forTextStyle: .title1).withSize(28)
        label.text = "Test Title"
        return label
    }()
    
    private var currentStatisticView: WellnessStatisticView = WellnessStatisticView(propertyEditor: false, title: "Current")
    private var goalStatisticView: WellnessStatisticView = WellnessStatisticView(propertyEditor: true, title: "Goal")
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [currentStatisticView,goalStatisticView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private lazy var averagesView: AverageDetailView = {
        let info = StatisticInformation(name: "Water", barProgressColor: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), barBackgroundColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), messages: ["good":"Water is working"])
        let view = AverageDetailView(statInfo: info)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    //MARK: Methods
    
    private func setupView() {
        
        backgroundColor = .systemBackground
        addSubview(iconimageView)
        addSubview(titleLabel)
        addSubview(stackView)
        
        
        iconimageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        iconimageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        iconimageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        iconimageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        titleLabel.topAnchor.constraint(equalTo: iconimageView.bottomAnchor, constant: 16).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        addSubview(averagesView)
        averagesView.topAnchor.constraint(equalTo: stackView.bottomAnchor).isActive = true
        averagesView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        averagesView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        averagesView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
    }
    
    func configurreViewData(details: DetailedViewInformation) {
        
        iconimageView.image = details.categoryModel.artwork
        titleLabel.text = details.categoryModel.title
        backgroundColor = details.categoryModel.trailingGradientColor
        averagesView = AverageDetailView(statInfo: details.statisticInformation)
        
        if details.categoryModel.title == "Steps" {
            let wellnessManager = WellnessDataManager()
            wellnessManager.getTodaysSteps { (steps) in
                DispatchQueue.main.async {
                    self.currentStatisticView.setStatValue(value: Float(steps))
                }
            }
        } else {
            currentStatisticView.setStatValue(value: details.categoryModel.currentStat)
        }
        goalStatisticView.setStatValue(value: details.categoryModel.goalStat)
        
        
        
    }

}
