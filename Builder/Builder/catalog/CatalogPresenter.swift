//
//  CatalogPresenter.swift
//  Builder
//
//  Created by itsector on 15/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation
import UIKit

protocol Presenter {
    var messageInfo: String {get}
}

class CatalogPresenter: Presenter {
    var messageInfo: String = "Create view model for presentation"
    
    weak var viewController: CatalogViewController?
}
