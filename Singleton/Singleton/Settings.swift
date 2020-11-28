//
//  Settings.swift
//  Singleton
//
//  Created by itsector on 05/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

class Settings {
    // main goal: only one instance is created
    static let shared = Settings()
    
    var themeColor = UIColor.white
    var volume: Float = 1.0
}
