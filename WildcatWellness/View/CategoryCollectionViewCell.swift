//
//  CategoryCollectionViewCell.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/29/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    //MARK: Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Properties
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .label
        label.font = .preferredFont(forTextStyle: .title2)
        return label
    }()
    
    private var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .secondaryLabel
        label.font = .preferredFont(forTextStyle: .subheadline)
        return label
    }()
    
    private var artworkImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private var gradientLayer: CAGradientLayer = {
        let gradientLayer = CAGradientLayer()
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0)
        gradientLayer.cornerRadius = 15.0
        return gradientLayer
    }()
    
    //MARK: Methods
    
    private func setupView() {
        
        gradientLayer.frame = self.bounds
        layer.addSublayer(gradientLayer)
        
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(artworkImageView)
        
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        titleLabel.widthAnchor.constraint(lessThanOrEqualTo: widthAnchor, multiplier: 0.75).isActive = true
        
        descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor).isActive = true

        
        artworkImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        artworkImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        artworkImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        artworkImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        
        
        self.layer.cornerRadius = 15
        
    }
    
    func configureCell(category: CategoryModel) {
        
        titleLabel.text = category.title
        descriptionLabel.text = category.description
        artworkImageView.image = category.artwork
        gradientLayer.colors = [category.leadingGradientColor.cgColor,category.trailingGradientColor.cgColor]
   
    }
    
}
