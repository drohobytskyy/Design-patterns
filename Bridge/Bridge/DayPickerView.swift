//
//  DayPickerView.swift
//  Bridge
//
//  Created by itsector on 11/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation
import UIKit

protocol DayPickerViewDataSource {
    func dayPickerCount(_ dayPicker: DayPickerView) -> Int
    func dayPickerTitle(_ dayPicker: DayPickerView, indexPath: IndexPath) -> String
}

protocol DayPickerViewDelegate {
    func temperatureForSelectedDay(temperature: String)
}

class DayPickerView: UIControl {
    public var dataSource: DayPickerViewDataSource? {
        didSet {
            setupView()
        }
    }
    
    var buttons: [UIButton] = []
    var stackView: UIStackView!
    var delegate: DayPickerViewDelegate?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        stackView.frame = bounds
    }

    func setupView() {
        let count = dataSource?.dayPickerCount(self)
        
        for item in 0..<count! {
            let indexPath = IndexPath(row: item, section: 0)
            let title = dataSource?.dayPickerTitle(self, indexPath: indexPath)
            
            let button = UIButton(type: .system)
            button.setTitle(title, for: .normal)
            button.tag = item
            button.setTitleColor(UIColor.lightGray, for: .normal)
            button.setTitleColor(UIColor.white, for: .selected)
            button.addTarget(self, action: #selector(selectedButton), for: .touchUpInside)
            buttons.append(button)
        }
        
        stackView = UIStackView(arrangedSubviews: buttons)
        self.addSubview(stackView)
        
        stackView.spacing = 8
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
    }
    
    @objc func selectedButton(_ sender: UIButton) {
        for button in buttons {
            button.isSelected = false
        }
        
        let index = sender.tag
        let button = buttons[index]
        button.isSelected = true
        
        delegate?.temperatureForSelectedDay(temperature: "\(index + 20) ºC")
    }
}
