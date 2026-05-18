//
//  TaskPlannerApp.swift
//  TaskPlanner
//
//  Created by Irshadali M T on 13/05/26.
//

import SwiftUI

@main
struct TaskPlannerApp: App {
    
    @StateObject private var router = AppRouter()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(router)
        }
    }
}
