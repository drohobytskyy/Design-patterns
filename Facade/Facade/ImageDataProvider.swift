//
//  ImageDataProvider.swift
//  Facade
//
//  Created by itsector on 15/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation
import UIKit

class ImageDataProvider {
    public func data(from image: UIImage, type: ImageType) throws -> Data {
        switch type {
        case .jpeg(let compressionQuality):
            return try jpegDate(from: image, compressionQuality: compressionQuality)
        case .png:
            return try pngData(from: image)
        }
    }
    
    private func pngData(from image: UIImage) throws -> Data {
        guard let imageData = image.pngData() else {
            throw ImageSaverError.couldNotCreatePNGDataFromImage
        }
        return imageData
    }
    
    private func jpegDate(from image: UIImage, compressionQuality: CGFloat) throws -> Data {
        guard let imageData = image.jpegData(compressionQuality: compressionQuality) else {
            throw ImageSaverError.couldNotCreateJPEGDataFromImage
        }
        return imageData
    }
}
