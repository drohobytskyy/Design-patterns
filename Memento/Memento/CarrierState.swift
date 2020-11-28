//
//  CarrierState.swift
//  Memento
//
//  Created by itsector on 18/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

class CarrierState {
    var state: LinesStateMemento?
    var linesManager: LinesManager
    
    init(linesManager: LinesManager) {
        self.linesManager = linesManager
    }
    
    func saveLine() {
        state = linesManager.save()
    }
    
    func loadLine() {
        guard state != nil else { return }
        
        linesManager.load(state: state!)
    }
}
