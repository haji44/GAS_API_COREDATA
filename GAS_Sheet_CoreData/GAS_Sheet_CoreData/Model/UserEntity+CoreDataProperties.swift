//
//  UserEntity+CoreDataProperties.swift
//  GAS_Sheet_CoreData
//
//  Created by kitano hajime on 2022/02/24.
//
//

import Foundation
import CoreData


extension UserEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserEntity> {
        return NSFetchRequest<UserEntity>(entityName: "UserEntity")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?

}

extension UserEntity : Identifiable {

}
