//
//  LinesStateMemento.swift
//  Memento
//
//  Created by itsector on 18/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

class LinesStateMemento {
    var linesArray: [LineModel]
    
    init(linesArray: [LineModel]) {
        self.linesArray = linesArray
    }
}
