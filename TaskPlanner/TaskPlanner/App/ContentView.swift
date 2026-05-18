//
//  ContentView.swift
//  TaskPlanner
//
//  Created by Irshadali M T on 13/05/26.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var router: AppRouter
    
    var body: some View {
        Group {
            switch router.destination {
            case .splash:
                SplashView()
                    .onAppear {
                        Logger.debug("splash loaded")
                    }
                    .transition(.opacity)
            case .tutorial:
                SplashView()
                    .onAppear {
                        Logger.debug("tutorial loaded")
                    }
                    .transition(.opacity)
            case .auth:
                SplashView()
                    .onAppear {
                        Logger.debug("auth loaded")
                    }
                    .transition(.opacity)
            case .main:
                SplashView()
                    .onAppear {
                        Logger.debug("main loaded")
                    }
                    .transition(.opacity)
            }
        }.animation(
            .spring(response: 0.45, dampingFraction: 0.85),
            value: router.destination
        )
    }
}

//#Preview {
//    ContentView()
//}
