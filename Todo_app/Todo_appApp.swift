//
//  Todo_appApp.swift
//  Todo_app
//
//  Created by 高山虎之介 on 2021/01/03.
//

import SwiftUI

@main
struct Todo_appApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
