//
//  Constants.swift
//  TaskPlanner
//
//  Created by Irshadali M T on 14/05/26.
//
import Foundation

enum AppConstants {
    enum OTP {
        static let length       = 6
        static let resendDelay  = 60
    }
    
    enum Animation {
        static let splashDelay: Double = 2.5
        static let defaultDuration: Double = 0.3
    }
    
    enum UserDefaultsKey {
        static let isLoggedIn          = "isLoggedIn"
        static let phoneNumber         = "phoneNumber"
        static let userName            = "userName"
        static let habits              = "habits"          // legacy — migration only
        static let habitLogs           = "habitLogs"       // legacy — migration only
        static let longestStreak       = "longestStreak"
        static let tutorialSeen        = "tutorialSeen"
        static let historyRetention    = "historyRetention"
        static let notificationsEnabled = "notificationsEnabled"
        static let dataSeeded          = "dataSeeded"
        static let legacyMigrated      = "legacyMigrated"
    }
    
    enum Notification {
        static let dailyReminderId     = "habitstrike.daily.reminder"
        static let reminderHour        = 20   // 8 PM
        static let reminderMinute      = 0
    }
    
    enum Mock {
        static let phoneNumber  = "+91 98765 43210"
        static let otp          = "123456"
        static let userName     = "Irshad"
        static let userInitials = "IR"
    }
}
