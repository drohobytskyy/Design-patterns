//
//  PathProvider.swift
//  Facade
//
//  Created by itsector on 15/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import Foundation

class PathProvider {
    func createDestinationPath(fileName: String) throws -> URL {
        guard let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            throw ImageSaverError.couldNotCreateDestinationPath
        }
        let destinationPath = path.appendingPathComponent("\(fileName)")
        print(destinationPath)
        return destinationPath
    }
}
