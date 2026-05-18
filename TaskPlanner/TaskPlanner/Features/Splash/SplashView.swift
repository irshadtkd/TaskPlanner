//
//  SplashView.swift
//  TaskPlanner
//
//  Created by Irshadali M T on 15/05/26.
//
import SwiftUI

struct SplashView: View {
    
    @EnvironmentObject private var router: AppRouter
    @State private var activeDot = 0
    
    var body: some View {
        ZStack {
            AppColor.backgroundDark.ignoresSafeArea()
            VStack(spacing: 16) {
                // App icon
                ZStack {
                    RoundedRectangle(cornerRadius: AppRadius.xl)
                        .fill(AppColor.primary)
                        .frame(width: 72, height: 72)
                    Text("⚡")
                        .font(.system(size: 36))
                }
                
                // Title & tagline
                Text(AppStrings.appName)
                    .font(AppFont.bold(26))
                    .foregroundColor(.white)
                
                Text(AppStrings.appTagline)
                    .font(AppFont.regular(14))
                    .foregroundColor(AppColor.textSecondary)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4)
                
                // Animated dots
                HStack(spacing: 6) {
                    ForEach(0..<3, id: \.self) { i in
                        Capsule()
                            .fill(i == activeDot ? AppColor.accentGreen : AppColor.primary)
                            .frame(width: i == activeDot ? 20 : 8, height: 8)
                            .animation(.easeInOut(duration: 0.3), value: activeDot)
                    }
                }
                .padding(.top, 24)
            }
            .padding(.horizontal, 32)
        }
        .onAppear {
            startDotAnimation()
            DispatchQueue.main.asyncAfter(deadline: .now() + AppConstants.Animation.splashDelay) {
                router.navigateAfterSplash()
            }
        }
    }
    
    private func startDotAnimation() {
        let interval = 0.6
        for i in 1...4 {
            DispatchQueue.main.asyncAfter(deadline: .now() + interval * Double(i)) {
                activeDot = i % 3
            }
        }
    }
}
