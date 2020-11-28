//
//  ViewController.swift
//  Singleton
//
//  Created by itsector on 05/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let themeColor = Settings.shared.themeColor
        let volume = Settings.shared.volume
        
        print(themeColor.description + " " + volume.description)
        
        // - Apple examples
        // UIApplication.shared.applicationState
        // UserDefaults.standard
        // URLSession.shared
    }
}

