//
//  Squat.swift
//  Factory
//
//  Created by itsector on 05/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

class Sqaut: Exercise {
    var name: String = "Squat"
    var type: String = "legs exercise"
    
    func start() {
        print("Start sqauts")
    }
    
    func stop() {
        print("Stop sqauts")
    }
}
