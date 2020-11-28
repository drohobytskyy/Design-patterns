//
//  BedroomFactory.swift
//  AbstractFactory
//
//  Created by itsector on 06/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

class BedroomFactory: AbstractFactory {
    func createChair() -> Chair {
        print("Created chair for bedroom")
        return BedroomChair()
    }
    
    func createTable() -> Table {
        print("Created table for bedroom")
        return BedroomCoffeeTable()
    }
    
    func createSofa() -> Sofa {
        print("Created sofa for bedroom")
        return BedroomSofa()
    }
}
