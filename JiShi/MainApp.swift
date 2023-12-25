//
//  MainApp.swift
//  JiShi
//
//  Created by yizhou on 23/12/2023.
//

import SwiftUI
import SwiftData
import UIPilot

enum Pages: Equatable {
    case WELCOME
    case HOME_LIST
    case SETTING_LIST
    case CALENDAR
    case SCORE
    case EXAM
    case CLASSROOM
    case QRCODE
    case NEWS_LIST
    case NEWS_DETAIL
    case CAMPUS_LOGIN
    case CARD_LOGIN
    case SUBSCRIPTION
    case ABOUT
    case PRIVACY
}

@main
struct MainApp: App {
    @StateObject var pilot = UIPilot(initial: Pages.WELCOME)
    var body: some Scene {
        WindowGroup {
            UIPilotHost(pilot) { route in
                switch(route) {
                case.WELCOME: WelcomeScreen()
                case.HOME_LIST: HomeListScreen()
                case.SETTING_LIST: SettingListScreen()
                case.CALENDAR: CalendarScreen()
                case.SCORE: ScoreScreen()
                case.EXAM: ExamScreen()
                case.CLASSROOM: ClassroomScreen()
                case.QRCODE: QrcodeScreen()
                case.NEWS_LIST: NewsListScreen()
                case.NEWS_DETAIL: NewsDetailScreen()
                case.CAMPUS_LOGIN: CampusLoginScreen()
                case.CARD_LOGIN: CardLoginScreen()
                case.SUBSCRIPTION: SubscriptionScreen()
                case.ABOUT: AboutScreen()
                case.PRIVACY: PrivacyScreen()
                }
            }
        }
    }
}
