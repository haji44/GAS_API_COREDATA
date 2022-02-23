//
//  GAS_Sheet_CoreDataApp.swift
//  GAS_Sheet_CoreData
//
//  Created by kitano hajime on 2022/02/23.
//

import SwiftUI

@main
struct GAS_Sheet_CoreDataApp: App {
    
    let controller = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            GASTabView().environment(\.managedObjectContext, controller.container.viewContext)
        }
    }
}
