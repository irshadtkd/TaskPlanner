//
//  DesignSystem.swift
//  TaskPlanner
//
//  Created by Irshadali M T on 14/05/26.
//
import SwiftUI

// MARK: - Corner radii
enum AppRadius {
    static let xs: CGFloat  = 6
    static let sm: CGFloat  = 8
    static let md: CGFloat  = 10
    static let lg: CGFloat  = 12
    static let xl: CGFloat  = 18
    static let pill: CGFloat = 20
    static let card: CGFloat = 12
    static let avatar: CGFloat = 18
}

// MARK: - Spacing
enum AppSpacing {
    static let xs: CGFloat  = 4
    static let sm: CGFloat  = 8
    static let md: CGFloat  = 12
    static let lg: CGFloat  = 16
    static let xl: CGFloat  = 20
    static let xxl: CGFloat = 24
}

// MARK: - Shadows
extension View {
    func cardShadow() -> some View {
        self.shadow(color: Color.black.opacity(0.05), radius: 4, x: 0, y: 2)
    }
}
