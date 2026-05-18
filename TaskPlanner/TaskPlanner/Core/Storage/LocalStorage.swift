//
//  LocalStorage.swift
//  TaskPlanner
//
//  Created by Irshadali M T on 15/05/26.
//
import Foundation

final class LocalStorage {
    
    static let shared = LocalStorage()
    private let defaults = UserDefaults.standard
    private init() {}
    
    // MARK: - Generic read / write
    func set<T: Encodable>(_ value: T, forKey key: String) {
        if let data = try? JSONEncoder().encode(value) {
            defaults.set(data, forKey: key)
        }
    }
    
    func get<T: Decodable>(_ type: T.Type, forKey key: String) -> T? {
        guard let data = defaults.data(forKey: key) else { return nil }
        return try? JSONDecoder().decode(type, from: data)
    }
    
    func setBool(_ value: Bool, forKey key: String) {
        defaults.set(value, forKey: key)
    }
    
    func bool(forKey key: String) -> Bool {
        defaults.bool(forKey: key)
    }
    
    func setString(_ value: String, forKey key: String) {
        defaults.set(value, forKey: key)
    }
    
    func string(forKey key: String) -> String? {
        defaults.string(forKey: key)
    }
    
    func remove(forKey key: String) {
        defaults.removeObject(forKey: key)
    }
    
    func clearAll() {
        let keys = [
            AppConstants.UserDefaultsKey.isLoggedIn,
            AppConstants.UserDefaultsKey.phoneNumber,
            AppConstants.UserDefaultsKey.userName,
            AppConstants.UserDefaultsKey.habits,
            AppConstants.UserDefaultsKey.habitLogs,
            AppConstants.UserDefaultsKey.longestStreak
        ]
        keys.forEach { defaults.removeObject(forKey: $0) }
    }
}
