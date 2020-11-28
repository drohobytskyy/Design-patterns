//
//  CatalogInteractor.swift
//  Builder
//
//  Created by itsector on 15/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

protocol Interactor {
    init(presenter: Presenter)
}

class CatalogInteractor: Interactor {
    var presenter: Presenter!
    
    // Businnes logic
    
    required init(presenter: Presenter) {
        self.presenter = presenter
    }
}
