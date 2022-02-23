//
//  DatabaseHandler.swift
//  GAS_Sheet_CoreData
//
//  Created by kitano hajime on 2022/02/23.
//
import CoreData

class DatabaseHandler {
    
    private let viewContext: NSManagedObjectContext = PersistenceController.shared.viewContext
    
    func add<T: NSManagedObject>(_ type: T.Type) -> T? {
        guard let entityName = T.entity().name else { return nil}
        guard let entity = NSEntityDescription.entity(forEntityName: entityName, in: viewContext) else { return nil }
        let object = T(entity: entity, insertInto: viewContext)
        return object
    }
  
    
    func save() {
        do {
            try viewContext.save()
        } catch {
            if let error = error as? PersistanceError {
                print(error)
            }
        }
    }
    
    // return array of certain entity
    func fetch<T: NSManagedObject>(_ type: T.Type) -> [T] {
        let request = T.fetchRequest()
        do {
            let result = try viewContext.fetch(request)
            return result as! [T]
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
}
