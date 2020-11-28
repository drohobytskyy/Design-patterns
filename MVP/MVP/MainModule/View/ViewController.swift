//
//  ViewController.swift
//  MVP
//
//  Created by itsector on 24/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    var presenter: MainViewPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapButton(_ sender: Any) {
        self.presenter.showGreeting()
    }
}

extension ViewController: MainViewProtocol {
    func setGreeting(greeting: String) {
        self.greetingLabel.text = greeting
    }
}

