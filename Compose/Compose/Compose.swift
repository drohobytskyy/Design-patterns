//
//  Compose.swift
//  Compose
//
//  Created by itsector on 09/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

protocol Compose {
    var name: String {get}
    func showContent() -> Any
    func addComponent(c: Compose)
    func contentCount() -> Int
}

class File: Compose {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func showContent() -> Any {
        return name
    }
    
    func addComponent(c: Compose) {
        print("Cannot add folder to file")
    }
    
    func contentCount() -> Int {
        return 1
    }
}

class Folder: Compose {
    var name: String
    private var contentArray = [Compose]()
    
    init(name: String) {
        self.name = name
    }
    
    func showContent() -> Any {
        return contentArray
    }
    
    func addComponent(c: Compose) {
        contentArray.append(c)
    }
    
    func contentCount() -> Int {
        contentArray.count
    }
}
