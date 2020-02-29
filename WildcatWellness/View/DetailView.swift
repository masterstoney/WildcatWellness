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
    
    private var currentStatisticView: WellnessStatisticView = WellnessStatisticView(propertyEditor: false)
    private var goalStatisticView: WellnessStatisticView = WellnessStatisticView(propertyEditor: true)
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [currentStatisticView,goalStatisticView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        return stackView
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
        
    }
    
    

}
