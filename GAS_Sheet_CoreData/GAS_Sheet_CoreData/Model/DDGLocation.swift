//
//  DDGLocation.swift
//  CoreDataCloudKit
//
//  Created by kitano hajime on 2022/02/22.
//

import Foundation

struct DDGData :  Codable {
    let result: [DDGLocation]
}

struct DDGLocation: Codable {
    let name: String
    let detail: String
    let street: String
    let latitude: Double
    let longitude: Double
    let website: String
    let phone_number: String
    let header_image: String
    let icon_image: String
}
extension DDGLocation: Identifiable {
    var id: UUID { UUID()}
}


struct MockData {
    static let sample = DDGLocation(name: "Test",
                                    detail: "This is the detail informaiton about the restaurant",
                                    street: "Street description ",
                                    latitude: 125.22, longitude: 36.55,
                                    website: "https://github.com/haji44",
                                    phone_number: "000-0000-0000",
                                    header_image: "ac-lounge-banner", icon_image: "ac-lounge-square")
}
