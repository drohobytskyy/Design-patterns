//
//  ModuleBuilder.swift
//  MVP
//
//  Created by itsector on 24/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}

class ModuleBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let model = Person(firstName: "Joe", lastName: "Doe")
        let view = ViewController()
        let presenter = MainPresenter(view: view, person: model)
        view.presenter = presenter
        return view
    }
}
