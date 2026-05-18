//
//  AppRouter.swift
//  TaskPlanner
//
//  Created by Irshadali M T on 14/05/26.
//
import SwiftUI

// MARK: - Route destinations
enum AppRoute: Hashable {
    case otp(phone: String)
}

// MARK: - App destination state
enum AppDestination {
    case splash
    case tutorial
    case auth
    case main
}

// MARK: - Router
final class AppRouter: ObservableObject {
    
    @Published var destination: AppDestination = .splash
    @Published var authPath: [AppRoute] = []
    
    private let authService = AuthService.shared
    
    // MARK: - Navigation actions
    
    func navigateAfterSplash() {
//        withAnimation(.easeInOut(duration: AppConstants.Animation.defaultDuration)) {
//            if authService.isLoggedIn {
//                destination = .main
//            } else if TutorialViewModel.hasSeenTutorial {
//                destination = .auth
//            } else {
//                destination = .tutorial
//            }
//        }
    }
    
    func navigateAfterTutorial() {
        withAnimation(.spring(response: 0.45, dampingFraction: 0.82)) {
            destination = .auth
        }
    }
    
    func navigateToMain() {
        withAnimation(.easeInOut(duration: AppConstants.Animation.defaultDuration)) {
            authPath = []
            destination = .main
        }
    }
    
    func navigateToAuth() {
        withAnimation(.easeInOut(duration: AppConstants.Animation.defaultDuration)) {
            authPath = []
            destination = .auth
        }
    }
    
    func push(_ route: AppRoute) {
        authPath.append(route)
    }
    
    func pop() {
        if !authPath.isEmpty { authPath.removeLast() }
    }
}
