//
//  StringApp.swift
//  String
//
//  Created by 许滨麟 on 2021/5/31.
//

import SwiftUI

@main
struct StringApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
