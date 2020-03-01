//
//  ARExerciseViewController.swift
//  WildcatWellness
//
//  Created by Tendaishe Gwini on 3/1/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit
import ARKit

class ARExerciseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        exerciseView.arView.delegate = self
        let scene = SCNScene()
        exerciseView.arView.scene = scene
        
        guard let exerciseUSDZUrl = Bundle.main.url(forResource: "Ruslan2", withExtension: "usdz") else {return}
        guard let exerciseURL = SCNReferenceNode(url: exerciseUSDZUrl) else {return}
        exerciseURL.load()
        
        exerciseURL.position = SCNVector3(3,-3,0)
        exerciseURL.scale = SCNVector3(0.15, 0.15, 0.1)
        exerciseView.arView.scene.rootNode.addChildNode(exerciseURL)

    }
    
    override func loadView() {
        self.view = exerciseView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let configuration = ARWorldTrackingConfiguration()
        exerciseView.arView.session.run(configuration)
        
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        exerciseView.arView.session.pause()
    }
    
    
    //MARK: Properties
    
    private var exerciseView: ARExerciseView = ARExerciseView()
    
    //MARK: Methods
    
    @objc func addExerciseToSceneView(withGestureRecognizer recognizer: UIGestureRecognizer) {
        let tapLocation = recognizer.location(in: exerciseView.arView)
        let hitTestResults = exerciseView.arView.hitTest(tapLocation, types: .existingPlaneUsingExtent)
        
        guard let hitTestResult = hitTestResults.first else { return }
        let translation = hitTestResult.worldTransform.columns.3
        let x = translation.x
        let y = translation.y
        let z = translation.z
        
        guard let exerciseUSDZUrl = Bundle.main.url(forResource: "Ruslan2", withExtension: "usdz") else {return}
        guard let exerciseURL = SCNReferenceNode(url: exerciseUSDZUrl) else {return}
        exerciseURL.load()
        
        
        print(x,y,z)
        
        exerciseURL.scale = SCNVector3(0.25, 0.25, 0.25)
        exerciseURL.position = SCNVector3(x,y,z)
        exerciseView.arView.scene.rootNode.addChildNode(exerciseURL)
    }
    

    func addTapGestureToSceneView() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(addExerciseToSceneView(withGestureRecognizer:)))
        exerciseView.arView.addGestureRecognizer(tapGestureRecognizer)
    }
    
    
}

//MARK: ARSCNView Delegate

extension ARExerciseViewController: ARSCNViewDelegate {
    
    
    
    
}

