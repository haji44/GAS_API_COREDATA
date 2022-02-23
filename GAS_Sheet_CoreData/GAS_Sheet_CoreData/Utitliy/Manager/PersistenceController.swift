//
//  PersistanceController.swift
//  CoreDataCloudKit
//
//  Created by kitano hajime on 2022/02/22.
//

import CoreData

class PersistenceController {
    
    static let shared = PersistenceController()
    
    let container = NSPersistentContainer(name: "DDGLocation")
    
    var viewContext: NSManagedObjectContext {
        return container.viewContext
    }
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error as? PersistanceError {
                print(error)
            }                    
        }
    }
}
