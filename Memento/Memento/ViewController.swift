//
//  ViewController.swift
//  Memento
//
//  Created by itsector on 18/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewBoard: DrawView!
    
    var carrierState: CarrierState!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewBoard.lineColor = .black
        
        let linesManager = LinesManager.shared
        carrierState = CarrierState(linesManager: linesManager)
    }


    @IBAction func saveAction(_ sender: Any) {
        carrierState.saveLine()
    }
    
    @IBAction func loadAction(_ sender: Any) {
        carrierState.loadLine()
        carrierState.linesManager.printLines(in: viewBoard)
    }
    
    @IBAction func blueAction(_ sender: Any) {
        viewBoard.lineColor = .blue
    }
    
    @IBAction func orangeAction(_ sender: Any) {
        viewBoard.lineColor = .orange
    }
    
    @IBAction func greenAction(_ sender: Any) {
        viewBoard.lineColor = .green
    }
}

