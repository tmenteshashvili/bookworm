//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Tako Menteshashvili on 21.11.22.
//

import SwiftUI

@main
struct BookwormApp: App {
    
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext,  dataController.container.viewContext)
        }
    }
}
