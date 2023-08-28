//
//  DataController.swift
//  Bookworm
//
//  Created by Louis Mille on 22/08/2023.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    //Indicate our CoreData file
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core data failed to load with error: \(error.localizedDescription)")
            }
        }
    }
}
