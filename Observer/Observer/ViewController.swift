//
//  ViewController.swift
//  Observer
//
//  Created by itsector on 20/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

protocol Observer {
    func update(subject: CustomNotificationCenter)
}

class CustomNotificationCenter {
    var state: Int = {
        return Int(arc4random_uniform(10))
    }()
    
    private lazy var observers = [Observer]()
    
    func subscribe(_ observer: Observer) {
        observers.append(observer)
        print(#function)
    }
    
    func unsubscribe(_ observer: Observer) {
        if let index = observers.firstIndex(where: {$0 as AnyObject === observer as AnyObject}) {
            observers.remove(at: index)
        }
    }
    
    func notify() {
        observers.forEach{$0.update(subject: self)}
        print(#function)
    }
    
    func businessLogic() {
        state = Int(arc4random_uniform(10))
        notify()
        print(#function)
    }
}

class ConcreteObserver: Observer {
    func update(subject: CustomNotificationCenter) {
        print("ConcreteObserver \(subject.state)")
    }
}

class ViewController: UIViewController, Observer {

    @IBOutlet weak var outputLabel: UILabel!
    
    let customNotificationCenter = CustomNotificationCenter()
    let observer = ConcreteObserver()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func update(subject: CustomNotificationCenter) {
        outputLabel.text = "ConcreteObserver \(subject.state)"
    }

    
    @IBAction func updateAction(_ sender: Any) {
        customNotificationCenter.businessLogic()
    }
    
    @IBAction func subscribeAction(_ sender: UISwitch) {
        if sender.isOn {
            customNotificationCenter.subscribe(self)
            customNotificationCenter.subscribe(observer)
        } else {
            customNotificationCenter.unsubscribe(self)
            customNotificationCenter.unsubscribe(observer)
        }
    }
}

