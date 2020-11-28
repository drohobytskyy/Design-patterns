//
//  Jumping.swift
//  Factory
//
//  Created by itsector on 05/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

class Jumping: Exercise {
    var name: String = "Jumps"
    var type: String = "Legs exercise"
    
    func start() {
        print("Start jumping")
    }
    
    func stop() {
        print("Stop jumping")
    }
}
