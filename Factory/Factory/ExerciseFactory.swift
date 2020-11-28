//
//  ExerciseFactory.swift
//  Factory
//
//  Created by itsector on 05/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

public enum Exercises {
    case jumping, squat
}

class ExerciseFactory {
    static let shared = ExerciseFactory()
    
    func createExercise(name: Exercises) -> Exercise {
        switch name {
        case .jumping:
            return Jumping()
        case .squat:
            return Sqaut()
        }
    }
}
