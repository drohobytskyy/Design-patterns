//
//  ViewController.swift
//  AbstractFactory
//
//  Created by itsector on 06/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var chair: Chair?
    var table: Table?
    var sofa: Sofa?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func kitchenOrderAction(_ sender: Any) {
        chair = KitchenFactory().createChair()
        table = KitchenFactory().createTable()
        sofa = KitchenFactory().createSofa()
    }
    
    @IBAction func bedroomOrderAction(_ sender: Any) {
        chair = BedroomFactory().createChair()
        table = BedroomFactory().createTable()
        sofa = BedroomFactory().createSofa()
    }
}

