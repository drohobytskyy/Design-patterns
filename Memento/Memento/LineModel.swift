//
//  LineModel.swift
//  Memento
//
//  Created by itsector on 18/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

struct LineModel {
    var start: CGPoint
    var end: CGPoint
    var color: UIColor
    
    init(start: CGPoint, end: CGPoint, color: UIColor) {
        self.start = start
        self.end = end
        self.color = color
    }
}
