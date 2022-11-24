//
//  DataController.swift
//  Bookworm
//
//  Created by Tako Menteshashvili on 22.11.22.
//

import CoreData
import Foundation


class DataController: ObservableObject {
    
    let container = NSPersistentContainer(name: "Bookworm")
    
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed tp load: \(error.localizedDescription) ")
            }
        }
    }
}
