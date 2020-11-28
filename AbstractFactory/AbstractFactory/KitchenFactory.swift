//
//  KitchenFactory.swift
//  AbstractFactory
//
//  Created by itsector on 06/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

class KitchenFactory: AbstractFactory {
    func createChair() -> Chair {
        print("Created chair for kitchen")
        return KitchenChair()
    }
    
    func createTable() -> Table {
        print("Created table for kitchen")
        return KitchenTable()
    }
    
    func createSofa() -> Sofa {
        print("Created sofa for kitchen")
        return KitchenSofa()
    }
}
