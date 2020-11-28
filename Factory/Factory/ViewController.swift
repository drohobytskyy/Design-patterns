//
//  ViewController.swift
//  Factory
//
//  Created by itsector on 05/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var exerciseArray = [Exercise]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createExercise(name: .jumping)
        createExercise(name: .squat)
        runExercise()
    }

    func createExercise(name: Exercises) {
        let exercise = ExerciseFactory.shared.createExercise(name: name)
        exerciseArray.append(exercise)
    }
    
    func runExercise() {
        for ex in exerciseArray {
            ex.start()
            ex.stop()
        }
    }
}

