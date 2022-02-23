//
//  ContentViewModel.swift
//  CoreDataCloudKit
//
//  Created by kitano hajime on 2022/02/22.
//

import SwiftUI

@MainActor
final class ContentViewModel: ObservableObject {
    
    var data: DDGData?
    @Published var location: [DDGLocation] = []
    
    func getLocation() {
        Task {
            do {
                data = try await APIManager.shared.getDDGLocation()
                guard let data = data else { return  }
                location = data.result
            }
            catch {
                if let error = error as? APIError {
                    print(error)
                }
            }
        }
    }
    
}
