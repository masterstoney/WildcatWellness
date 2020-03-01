//
//  BarView.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 2/28/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class BarView: UIView {

    //MARK: Initializers & Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(backgroundColor: UIColor, progressColor: UIColor, icon: UIImage = UIImage()) {
        self.init()
        backgroundLayer.backgroundColor = backgroundColor.cgColor
        progressLayer.backgroundColor = progressColor.cgColor
        iconImageView.image = icon
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        backgroundLayer.frame = self.bounds
        
    }
    
    //MARK: Properties
    
    private var backgroundLayer: CALayer = {
        let layer = CALayer()
        
        return layer
    }()
    
    private var progressLayer: CALayer = {
        let layer = CALayer()
        layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMaxXMinYCorner]
        layer.cornerRadius = 10.0
        layer.shadowColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        layer.shadowRadius = 5.0
        layer.shadowOpacity = 0.8
        return layer
    }()
    
    private var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    //MARK: Methods
    
    private func setupView() {
        
        
        self.layer.masksToBounds = true
        self.layer.addSublayer(backgroundLayer)
        progressLayer.anchorPoint = CGPoint(x: 0, y: 0.0)
        self.layer.addSublayer(progressLayer)
        
        addSubview(iconImageView)
        iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    
    /**Value between 0 and 1 to mark the progress in the task*/
    private func configureProgress(progress: CGFloat) {
        
        let oldWidth = progressLayer.bounds.width
        let newWidth = progress * bounds.width
        let progressAnimation = CABasicAnimation(keyPath: "bounds.size.width")
        progressAnimation.duration = 1.0
        progressAnimation.fromValue = oldWidth
        progressAnimation.toValue = newWidth
        progressLayer.bounds = CGRect(origin: bounds.origin, size: CGSize(width: newWidth, height: bounds.height))
        progressLayer.add(progressAnimation, forKey: "anim")
     
    }
    
    func configureEvent(event: WellnessEvent) {
        
        self.configureProgress(progress: event.progress)
        
    }
    
    

}
