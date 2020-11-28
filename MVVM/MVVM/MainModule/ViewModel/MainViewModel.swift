//
//  MainViewModel.swift
//  MVVM
//
//  Created by itsector on 24/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

protocol MainViewModelProtocol {
    var updateViewData: ((ViewData) -> ())? { get set }
    func startFetch()
}

class MainViewModel: MainViewModelProtocol {
    public var updateViewData: ((ViewData) -> ())?
    
    init() {
        updateViewData?(.initial)
    }
    
    func startFetch() {
        updateViewData?(.loading(ViewData.Data(icon: nil, title: nil, description: nil, phoneNumber: nil)))
        
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 3) { [weak self] in
            self?.updateViewData?(.success(ViewData.Data(icon: "success", title: "success", description: "success", phoneNumber: "success")))
        }
        
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 5) { [weak self] in
            self?.updateViewData?(.failure(ViewData.Data(icon: "error", title: "failure", description: "failure", phoneNumber: "failure")))
        }
    }
}
