//
//  ViewController.swift
//  Builder
//
//  Created by itsector on 15/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func action(_ sender: Any) {
        let controller = CatalogBuilder().setTitle("Catalog").build()
        self.present(controller, animated: true, completion: nil)
    }
}

