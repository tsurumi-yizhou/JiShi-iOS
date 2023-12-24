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
    case HOME
}

@main
struct MainApp: App {
    @StateObject var pilot = UIPilot(initial: Pages.HOME)
    var body: some Scene {
        WindowGroup {
            UIPilotHost(pilot) { route in
                switch(route) {
                case .HOME: HomeScreen()
                }
            }
        }
    }
}
