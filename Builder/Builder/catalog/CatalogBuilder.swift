//
//  CatalogBuilder.swift
//  Builder
//
//  Created by itsector on 15/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation
import UIKit

class CatalogBuilder: ModuleBuilder {
    
    var title: String?
    
    func setTitle(_ title: String) -> CatalogBuilder {
        self.title = title
        return self
    }
    
    func build() -> UIViewController {
        guard let title = title else {
            fatalError("Title is reuqired")
        }
        
        let presenter = CatalogPresenter()
        let interactor = CatalogInteractor(presenter: presenter)
        let controller = CatalogViewController(title: title, interactor: interactor)
        presenter.viewController = controller
        
        return controller
    }
}
