//
//  AppStrings.swift
//  TaskPlanner
//
//  Created by Irshadali M T on 15/05/26.
//
enum AppStrings {
    
    // MARK: - App
    static let appName          = "HabitStrike"
    static let appTagline       = "Build streaks. Track consistency.\nWin every day."
    
    // MARK: - Login
    static let signIn           = "Sign in"
    static let signInSubtitle   = "Enter your mobile number to continue"
    static let mobileNumber     = "Mobile number"
    static let sendOTP          = "Send OTP →"
    static let otpFootnote      = "OTP via Firebase • Session saved locally"
    static let countryCode      = "+91"
    
    // MARK: - OTP
    static let verifyOTP        = "Verify OTP"
    static let sentTo           = "Sent to"
    static let verifyContinue   = "Verify & continue"
    static let resendIn         = "Resend in"
    static let resend           = "Resend"
    
    // MARK: - Dashboard
    static let goodMorning      = "Good morning!"
    static let goodAfternoon    = "Good afternoon!"
    static let goodEvening      = "Good evening!"
    static let streak           = "streak"
    static let todaysProgress   = "Today's progress"
    static let todaysHabits     = "Today's habits"
    static let done             = "done"
    static let missed           = "missed"
    static let pending          = "pending"
    
    // MARK: - Add Habit
    static let newHabit         = "New habit"
    static let pickIcon         = "Pick icon"
    static let habitName        = "Habit name"
    static let category         = "Category"
    static let saveHabit        = "Save habit"
    static let habitPlaceholder = "e.g. Morning workout"
    
    // MARK: - Categories
    static let catHealth        = "Health"
    static let catLearning      = "Learning"
    static let catWellness      = "Wellness"
    static let catWork          = "Work"
    static let catFinance       = "Finance"
    static let catSocial        = "Social"
    
    // MARK: - Analytics
    static let analytics        = "Analytics"
    static let week             = "Week"
    static let month            = "Month"
    static let year             = "Year"
    static let completionRate   = "Completion rate"
    static let dailyAvgDone     = "Daily avg done"
    static let activeDays       = "Active days"
    static let missedDays       = "Missed days"
    static let dailyCompletions = "Daily completions this week"
    static let behaviorInsights = "Behavior insights"
    static let strikeRate       = "strike rate"
    
    // MARK: - Profile
    static let profile          = "Profile"
    static let tasksCreated     = "Tasks created"
    static let totalCompleted   = "Total completed"
    static let currentStreak    = "Current streak"
    static let consistency      = "Consistency"
    static let longestStreak    = "Longest streak:"
    static let bestWeek         = "Best week:"
    static let logout           = "Logout"
    
    // MARK: - Tab bar
    static let tabHome          = "Home"
    static let tabAdd           = "Add"
    static let tabStats         = "Stats"
    static let tabProfile       = "Profile"
    
    // MARK: - Days
    static let mon = "Mon"
    static let tue = "Tue"
    static let wed = "Wed"
    static let thu = "Thu"
    static let fri = "Fri"
    static let sat = "Sat"
    static let sun = "Sun"
    
    // MARK: - Settings
    static let settings                = "Settings"
    static let notifications           = "Notifications"
    static let notificationsDetail     = "Daily reminder to check in your habits"
    static let historyRetention        = "History Retention"
    static let historyRetentionDetail  = "Habit logs older than this period will be deleted automatically"
    static let historyMax              = "Maximum retention is 1 year"
    static let retention1Month         = "1 Month"
    static let retention3Months        = "3 Months"
    static let retention6Months        = "6 Months"
    static let retention1Year          = "1 Year"
    static let retentionDefault        = "(Default)"
    static let retentionMax            = "(Max)"
    static let dataManagement          = "Data Management"
    static let general                 = "General"
    static let notifPermissionDenied   = "Enable notifications in iOS Settings → HabitStrike."
    static let notifReminderTitle      = "🔥 Don't break your streak!"
    static let notifReminderBody       = "Check in your habits and keep your streak alive today."
    
    // MARK: - Tutorial
    static let tutorialSkip        = "Skip"
    static let tutorialNext        = "Next"
    static let tutorialGetStarted  = "Get Started"
    
    static let tutorialSlide1Title = "Build Powerful Streaks"
    static let tutorialSlide1Sub   = "Create daily habits and watch your\nconsistency compound over time."
    
    static let tutorialSlide2Title = "Insightful Analytics"
    static let tutorialSlide2Sub   = "Understand your patterns with weekly\nand monthly performance insights."
    
    static let tutorialSlide3Title = "Win Every Day"
    static let tutorialSlide3Sub   = "Turn small daily actions into\nlife-changing results. Start today."
    
    // MARK: - Emoji icons
    static let defaultIcons: [String] = ["🏋️", "📚", "🧘", "💧", "🛌", "✍️", "🏃", "🎯", "💪", "🥗"]
}
