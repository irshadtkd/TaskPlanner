//
//  AppColor.swift
//  TaskPlanner
//
//  Created by Irshadali M T on 14/05/26.
//
import SwiftUI

enum AppColor {
    // MARK: - Brand
    static let primary         = Color(hex: "#534AB7")
    static let primaryLight    = Color(hex: "#EEEDFE")
    
    // MARK: - Backgrounds
    static let backgroundDark  = Color(hex: "#0f0c2e")
    static let background      = Color(hex: "#f7f6ff")
    static let surface         = Color.white
    
    // MARK: - Accent
    static let accentGreen     = Color(hex: "#9FE1CB")
    
    // MARK: - Text
    static let textPrimary     = Color(hex: "#26215C")
    static let textSecondary   = Color(hex: "#AFA9EC")
    static let textTertiary    = Color(hex: "#888780")
    static let textOnDark      = Color.white
    
    // MARK: - Border
    static let border          = Color(hex: "#D3D1C7")
    static let borderDark      = Color(hex: "#534AB7")
    
    // MARK: - Status: Success
    static let successFg       = Color(hex: "#3B6D11")
    static let successBg       = Color(hex: "#EAF3DE")
    
    // MARK: - Status: Error / Missed
    static let errorFg         = Color(hex: "#A32D2D")
    static let errorFgBright   = Color(hex: "#E24B4A")
    static let errorBg         = Color(hex: "#FCEBEB")
    
    // MARK: - Status: Warning
    static let warningFg       = Color(hex: "#FAC775")
    static let warningBg       = Color(hex: "#FAEEDA")
    
    // MARK: - Tab bar
    static let tabBarBg        = Color.white
    static let tabActive       = Color(hex: "#534AB7")
    static let tabInactive     = Color(hex: "#B4B2A9")
}

// MARK: - Hex initializer
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3:
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red:   Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}


