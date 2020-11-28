//
//  MercedesCLA.swift
//  Decorator
//
//  Created by itsector on 09/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

class MercedesCLA: CarProtocol {
    func getTitle() -> String {
        return "MercedesCLA"
    }
    
    func getPrice() -> Double {
        return 50000
    }
}
