//
//  LinesManager.swift
//  Memento
//
//  Created by itsector on 18/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

class LinesManager {
    static let shared = LinesManager()
    
    var currentLinesArray = [LineModel]()
    
    func save() -> LinesStateMemento {
        return LinesStateMemento(linesArray: self.currentLinesArray)
    }
    
    func load(state: LinesStateMemento) {
        self.currentLinesArray = state.linesArray
    }
    
    func printLines(in view: UIView) {
        for v in view.layer.sublayers! {
            v.removeFromSuperlayer()
        }
        
        for line in currentLinesArray {
            let path = UIBezierPath()
            path.move(to: line.start)
            path.addLine(to: line.end)
            drawShapeLayer(path, line.color, view)
        }
    }
    
    private func drawShapeLayer(_ path: UIBezierPath, _ lineColor: UIColor, _ view: UIView) {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = 10
        shapeLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(shapeLayer)
        view.setNeedsDisplay()
    }
}
