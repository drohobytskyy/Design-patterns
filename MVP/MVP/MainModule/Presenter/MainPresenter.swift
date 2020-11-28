//
//  MainPresenter.swift
//  MVP
//
//  Created by itsector on 24/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

protocol MainViewProtocol: class {
    func setGreeting(greeting: String)
}

protocol MainViewPresenterProtocol: class {
    init(view: MainViewProtocol, person: Person)
    func showGreeting()
}

class MainPresenter: MainViewPresenterProtocol {
    
    let view: MainViewProtocol
    let person: Person
    
    required init(view: MainViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = self.person.firstName + " " +  self.person.lastName
        self.view.setGreeting(greeting: greeting)
    }
}
