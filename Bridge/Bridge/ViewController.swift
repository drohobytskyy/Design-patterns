//
//  ViewController.swift
//  Bridge
//
//  Created by itsector on 11/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dayPivker: DayPickerView!
    var days: [String] = ["Mon", "Tue", "Wed", "Thu", "Sex", "Sut", "Sun"]
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dayPivker.dataSource = self
        dayPivker.delegate = self
    }
}

extension ViewController: DayPickerViewDataSource, DayPickerViewDelegate {
    
    func dayPickerCount(_ dayPicker: DayPickerView) -> Int {
        return days.count
    }
    
    func dayPickerTitle(_ dayPicker: DayPickerView, indexPath: IndexPath) -> String {
        return days[indexPath.row]
    }
    
    func temperatureForSelectedDay(temperature: String) {
        self.temperatureLabel.text = temperature
    }
}

