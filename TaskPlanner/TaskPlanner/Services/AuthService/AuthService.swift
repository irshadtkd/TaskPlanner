//
//  AuthService.swift
//  TaskPlanner
//
//  Created by Irshadali M T on 15/05/26.
//
import Foundation

protocol AuthServiceProtocol {
    var isLoggedIn: Bool { get }
    func sendOTP(to phone: String, completion: @escaping (Bool) -> Void)
    func verifyOTP(_ otp: String, completion: @escaping (Bool) -> Void)
    func logout()
}

final class AuthService: AuthServiceProtocol {
    static let shared = AuthService()
    private let storage = LocalStorage.shared
    private var pendingPhone: String = ""
    private init() {}
    
    var isLoggedIn: Bool {
        storage.bool(forKey: AppConstants.UserDefaultsKey.isLoggedIn)
    }
    
    func sendOTP(to phone: String, completion: @escaping (Bool) -> Void) {
        pendingPhone = phone
        // Simulated async OTP send
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(true)
        }
    }
    
    func verifyOTP(_ otp: String, completion: @escaping (Bool) -> Void) {
        // Accept any 6-digit OTP locally
        let isValid = otp.count == AppConstants.OTP.length && otp.allSatisfy { $0.isNumber }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) { [weak self] in
            guard let self else { return }
            if isValid {
                self.storage.setBool(true, forKey: AppConstants.UserDefaultsKey.isLoggedIn)
                self.storage.setString(self.pendingPhone, forKey: AppConstants.UserDefaultsKey.phoneNumber)
                self.storage.setString(AppConstants.Mock.userName, forKey: AppConstants.UserDefaultsKey.userName)
            }
            completion(isValid)
        }
    }
    
    func logout() {
        storage.clearAll()
    }
}
