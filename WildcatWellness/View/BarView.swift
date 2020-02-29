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
    
    convenience init(backgroundColor: UIColor, progressColor: UIColor) {
        self.init()
        backgroundLayer.backgroundColor = backgroundColor.cgColor
        progressLayer.backgroundColor = progressColor.cgColor
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        backgroundLayer.frame = self.bounds
        //   backgroundLayer.anchorPoint = CGPoint(x: 0, y: 0)
        
        print(progressLayer.bounds.width)
        
    }
    
    //MARK: Properties
    
    private var backgroundLayer: CALayer = {
        let layer = CALayer()
       // layer.lineCap = .round
        return layer
    }()
    
    private var progressLayer: CALayer = {
        let layer = CALayer()
       // layer.lineCap = .round
        return layer
    }()
    
    //MARK: Methods
    
    private func setupView() {
        
        self.layer.addSublayer(backgroundLayer)
        
//        progressLayer.frame = CGRect(origin: bounds.origin, size: CGSize(width: 0.0, height: bounds.height))
        progressLayer.anchorPoint = CGPoint(x: 0, y: 0.0)
        self.layer.addSublayer(progressLayer)
        
        
        
    }
    
    
    func configureProgress(progress: CGFloat) {
        
        print("Something is being called here")
        let oldWidth = progressLayer.bounds.width
        let progressAnimation = CABasicAnimation(keyPath: "bounds.size.width")
        progressAnimation.duration = 3.0
        progressAnimation.fromValue = oldWidth
        progressAnimation.toValue = oldWidth + progress
        progressLayer.bounds = CGRect(origin: bounds.origin, size: CGSize(width: progress, height: bounds.height))
        progressLayer.add(progressAnimation, forKey: "anim")
     
        
        print(progressLayer.bounds.width)
    }
    
    

}
