//
//  LocationEntity+CoreDataProperties.swift
//  GAS_Sheet_CoreData
//
//  Created by kitano hajime on 2022/02/24.
//
//

import Foundation
import CoreData


extension LocationEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LocationEntity> {
        return NSFetchRequest<LocationEntity>(entityName: "LocationEntity")
    }

    @NSManaged public var detail: String?
    @NSManaged public var header_image: Data?
    @NSManaged public var icon_image: Data?
    @NSManaged public var latitude: Double
    @NSManaged public var longitude: Double
    @NSManaged public var name: String?
    @NSManaged public var phone_number: String?
    @NSManaged public var street: String?
    @NSManaged public var website: String?

}

extension LocationEntity : Identifiable {

}
