//
//  ViewController.swift
//  MVVM
//
//  Created by itsector on 24/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var viewModel: MainViewModelProtocol!
    private var testView: TestView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = MainViewModel()
        createView()
        updateView()
    }
    
    private func createView() {
        testView = TestView()
        testView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        testView.center = view.center
        view.addSubview(testView)
    }
    
    private func updateView() {
        viewModel.updateViewData = { [weak self] viewData in
            self?.testView.viewData = viewData
        }
    }
    
    @IBAction func startFetchingAction(_ sender: Any) {
        viewModel.startFetch()
    }
}

