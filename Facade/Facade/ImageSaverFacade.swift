//
//  ImageSaverFacade.swift
//  Facade
//
//  Created by itsector on 15/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation
import UIKit

enum ImageSaverError: Error {
    case couldNotCreateDestinationPath
    case couldNotCreateJPEGDataFromImage
    case couldNotCreatePNGDataFromImage
    case couldNotSaveImageDestinationPath
}

class ImageSaverFacade {
    private let pathProvider = PathProvider()
    private let dataProvider = ImageDataProvider()
    
    public func save(image: UIImage, type: ImageType, fileName: String, overwrite: Bool) throws {
        let destinationURL = try pathProvider.createDestinationPath(fileName: fileName)
        let imageData = try dataProvider.data(from: image, type: type)
        let writeOptions: Data.WritingOptions = overwrite ? .atomic : .withoutOverwriting
        try imageData.write(to: destinationURL, options: writeOptions)
    }
}
