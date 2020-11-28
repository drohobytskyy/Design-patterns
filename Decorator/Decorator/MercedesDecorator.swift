//
//  MercedesDecorator.swift
//  Decorator
//
//  Created by itsector on 09/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

class MercedesDecorator: CarProtocol {
    private var decoratorType: CarProtocol
    
    required init(decorator: CarProtocol) {
        decoratorType = decorator
    }
    
    func getTitle() -> String {
        return decoratorType.getTitle()
    }
    
    func getPrice() -> Double {
        return decoratorType.getPrice()
    }
}
