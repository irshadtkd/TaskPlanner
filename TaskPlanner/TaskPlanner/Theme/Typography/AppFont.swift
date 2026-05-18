//
//  AppFont.swift
//  TaskPlanner
//
//  Created by Irshadali M T on 14/05/26.
//
import SwiftUI

enum AppFont {
    static func regular(_ size: CGFloat) -> Font { .system(size: size, weight: .regular) }
    static func medium(_ size: CGFloat)  -> Font { .system(size: size, weight: .medium) }
    static func semibold(_ size: CGFloat)-> Font { .system(size: size, weight: .semibold) }
    static func bold(_ size: CGFloat)    -> Font { .system(size: size, weight: .bold) }
}

// MARK: - Semantic text styles
extension AppFont {
    static let screenTitle  = bold(22)
    static let sectionTitle = medium(15)
    static let cardTitle    = medium(13)
    static let label        = regular(12)
    static let caption      = regular(11)
    static let micro        = regular(10)
    static let tabLabel     = regular(9)
    static let bigStat      = medium(20)
    static let profileStat  = medium(18)
}
