//
//  ViewController.swift
//  Flyweight
//
//  Created by itsector on 13/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let green = UIColor.green
        let green2 = UIColor.green
        print(green === green2)
        
        let color = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        let color2 = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        print(color === color2)
        
        let flyWeightColor = UIColor.rgba(1, 0, 0, 1)
        let flyWeightColor2 = UIColor.rgba(1, 0, 0, 1)
        print(flyWeightColor === flyWeightColor2)
    }
}

extension UIColor {
    static var storedColors: [String: UIColor] = [:]
    class func rgba(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> UIColor {
        let key = "\(red)\(green)\(blue)\(alpha)"
        if let color = storedColors[key] {
            return color
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        storedColors[key] = color
        return color
    }
}

