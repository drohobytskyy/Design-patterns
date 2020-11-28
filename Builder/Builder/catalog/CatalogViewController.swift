//
//  CatalogViewController.swift
//  Builder
//
//  Created by itsector on 15/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

class CatalogViewController: UIViewController {
    
    var interactor: Interactor! = nil
    
    init(title: String, interactor: Interactor) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
        self.title = title
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
    }
}
