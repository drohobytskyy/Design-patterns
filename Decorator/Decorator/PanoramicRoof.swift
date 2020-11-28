//
//  PanoramicRoof.swift
//  Decorator
//
//  Created by itsector on 09/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

class PanoramicRoof: MercedesDecorator {
    required init(decorator: CarProtocol) {
        super.init(decorator: decorator)
    }
    
    override func getTitle() -> String {
        return super.getTitle() + " premium roof"
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 5000
    }
}
