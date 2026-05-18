//
//  Logger.swift
//  TaskPlanner
//
//  Created by Irshadali M T on 14/05/26.
//
import Foundation
import os.log

// MARK: - Log Level

enum LogLevel: String {
    case debug   = "🔍 DEBUG"
    case info    = "ℹ️  INFO "
    case warning = "⚠️  WARN "
    case error   = "🔴 ERROR"
    case success = "✅ SUCCESS"
}

// MARK: - Logger
/// Centralised logger backed by `os.Logger`.
/// All output is visible in Xcode's console and in the macOS Console app
/// under the subsystem `com.taskplanner.app`.
///
/// Usage:
/// ```swift
/// AppLogger.debug("Loaded \(habits.count) habits")
/// AppLogger.error("Save failed", category: .storage)
/// ```
///
/// Log levels are printed **only in DEBUG builds**.
/// `error` logs are also written to the unified logging system in release.
final class Logger {
    
    // MARK: - Categories
    
    enum Category: String {
        case general        = "General"
        case auth           = "Auth"
        case storage        = "Storage"
        case ui             = "UI"
        case notification   = "Notification"
        case analytics      = "Analytics"
        case network        = "Network"
        case migration      = "Migration"
    }
    
    // MARK: - Subsystem
    
    private static let subsystem = "com.taskplanner.app"
    
    // MARK: - os.Logger cache
    
    private static var loggers: [String: os.Logger] = [:]
    
    private static func osLogger(for category: Category) -> os.Logger {
        if let cached = loggers[category.rawValue] { return cached }
        let logger = os.Logger(subsystem: subsystem, category: category.rawValue)
        loggers[category.rawValue] = logger
        return logger
    }
    
    // MARK: - Public API
    
    static func debug(
        _ message: String,
        category: Category = .general,
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {
        log(level: .debug, message: message, category: category,
            file: file, function: function, line: line)
    }
    
    static func info(
        _ message: String,
        category: Category = .general,
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {
        log(level: .info, message: message, category: category,
            file: file, function: function, line: line)
    }
    
    static func warning(
        _ message: String,
        category: Category = .general,
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {
        log(level: .warning, message: message, category: category,
            file: file, function: function, line: line)
    }
    
    static func error(
        _ message: String,
        category: Category = .general,
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {
        log(level: .error, message: message, category: category,
            file: file, function: function, line: line)
    }
    
    static func success(
        _ message: String,
        category: Category = .general,
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {
        log(level: .success, message: message, category: category,
            file: file, function: function, line: line)
    }
    
    // MARK: - Core
    
    private static func log(
        level: LogLevel,
        message: String,
        category: Category,
        file: String,
        function: String,
        line: Int
    ) {
        let fileName = (file as NSString).lastPathComponent
        let entry = "[\(category.rawValue)] \(level.rawValue) → \(message)  (\(fileName):\(line) \(function))"
        
#if DEBUG
        let logger = osLogger(for: category)
        switch level {
        case .debug:   logger.debug("\(entry, privacy: .public)")
        case .info:    logger.info("\(entry, privacy: .public)")
        case .warning: logger.warning("\(entry, privacy: .public)")
        case .error:   logger.error("\(entry, privacy: .public)")
        case .success: logger.info("\(entry, privacy: .public)")
        }
#else
        // In release builds only persist genuine errors to the unified log
        if level == .error {
            osLogger(for: category).error("\(entry, privacy: .public)")
        }
#endif
    }
}
