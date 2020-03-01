//
//  ARExerciseView.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 3/1/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit
import ARKit


class ARExerciseView: UIView {

    //MARK: Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Properties
    
    
    var arView: ARSCNView = {
        let view = ARSCNView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.autoenablesDefaultLighting = true
        view.automaticallyUpdatesLighting = true
        return view
    }()
    
    var arCoachingView: ARCoachingOverlayView = {
        let view = ARCoachingOverlayView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    //MARK: Methods
    
    private func setupView() {
        
        addSubview(arView)
        addSubview(arCoachingView)
        
        arView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        arView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        arView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        arView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        arCoachingView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        arCoachingView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        arCoachingView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        arCoachingView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
          
        
    }
    
    

}
