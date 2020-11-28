//
//  Exercise.swift
//  Factory
//
//  Created by itsector on 05/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

protocol Exercise {
    var name: String {get}
    var type: String {get}
    
    func start()
    func stop()
}
