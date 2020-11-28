//
//  ViewData.swift
//  MVVM
//
//  Created by itsector on 24/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

enum ViewData {
    case initial
    case loading(Data)
    case success(Data)
    case failure(Data)
    
    struct Data {
        let icon: String?
        let title: String?
        let description: String?
        let phoneNumber: String?
    }
}
