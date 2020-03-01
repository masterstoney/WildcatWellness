//
//  WellnessStatisticView.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/29/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class WellnessStatisticView: UIView {

    //MARK: Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(propertyEditor: Bool, title: String) {
        self.init()
        self.propertyEditor = propertyEditor
        self.titleLabel.text = title
        setupView()
    }
    
    override func draw(_ rect: CGRect) {
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: rect.minX + 16, y: rect.maxY - 1))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - 1))
        let strokeColor = UIColor.label
        strokeColor.setStroke()
        path.lineWidth = 0.8
        path.lineCapStyle = .round
        path.stroke()
        
    }
    
    //MARK: Properties
    
    private var propertyEditor: Bool = false
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .caption1).withSize(20)
        label.textColor = .label
        label.text = "Title"
        return label
    }()
    
    private var valueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .caption1).withSize(20)
        label.textColor = .label
        label.textAlignment = .right
        label.text = "Value"
        return label
    }()
    
    private var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "chevron.right")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .secondaryLabel
        return imageView
    }()
    
    //MARK: Methods
    
    private func setupView() {
        
        addSubview(titleLabel)
        addSubview(valueLabel)
        addSubview(iconImageView)
        
        backgroundColor = .clear
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: centerXAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        valueLabel.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor).isActive = true
        valueLabel.trailingAnchor.constraint(equalTo: iconImageView.leadingAnchor).isActive = true
        valueLabel.heightAnchor.constraint(equalTo: titleLabel.heightAnchor).isActive = true
        valueLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        iconImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 25).isActive = true
        
        if !propertyEditor {
            iconImageView.isHidden = true
        }
        
        
    }
    
    func setStatValue(value: Float) {
        valueLabel.text = "\(value)"
    }

}
