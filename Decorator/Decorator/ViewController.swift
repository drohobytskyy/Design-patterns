//
//  ViewController.swift
//  Decorator
//
//  Created by itsector on 09/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var priceLabel: UILabel! {
        didSet {
            priceLabel.text = "Price: \(mercedes.getPrice()) €"
        }
    }
    @IBOutlet var typeLabel: UILabel! {
        didSet {
            typeLabel.text = "Type: \(mercedes.getTitle()) €"
        }
    }

    var mercedes: CarProtocol = MercedesCLA()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func menuAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            mercedes = MercedesCLA()
            priceLabel.text = "Price: \(mercedes.getPrice()) €"
            typeLabel.text = "Type: \(mercedes.getTitle())"
        case 1:
            mercedes = MercedesCLA()
            mercedes = SpecialWheels(decorator: mercedes)
            priceLabel.text = "Price: \(mercedes.getPrice()) €"
            typeLabel.text = "Type: \(mercedes.getTitle())"
        case 2:
            mercedes = MercedesCLA()
            mercedes = PanoramicRoof(decorator: mercedes)
            priceLabel.text = "Price: \(mercedes.getPrice()) €"
            typeLabel.text = "Type: \(mercedes.getTitle())"
        default:
            break
        }
    }
}

