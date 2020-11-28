//
//  ViewController.swift
//  Facade
//
//  Created by itsector on 15/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

enum ImageType {
    case png
    case jpeg(compressionQuality: CGFloat)
}

class ViewController: UIViewController {
    var imageSaver = ImageSaverFacade()
    let image = UIImage(named: "image")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            try imageSaver.save(image: image, type: .png, fileName: "image", overwrite: true)
        } catch {
            print(error)
        }
    }
}

