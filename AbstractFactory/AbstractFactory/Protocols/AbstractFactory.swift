//
//  AbstractFactory.swift
//  AbstractFactory
//
//  Created by itsector on 06/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

protocol AbstractFactory {
    func createChair() -> Chair
    func createTable() -> Table
    func createSofa() -> Sofa
}
