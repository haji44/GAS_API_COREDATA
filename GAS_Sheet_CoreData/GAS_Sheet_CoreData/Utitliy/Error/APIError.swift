//
//  APIError.swift
//  CoreDataCloudKit
//
//  Created by kitano hajime on 2022/02/22.
//

import Foundation

enum APIError: Error {
    case wrongURL
    case invalidData
}

enum PersistanceError: Error {
    case couldNotSave
}
