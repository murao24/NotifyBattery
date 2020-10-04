//
//  NotifyBatteryApp.swift
//  NotifyBattery WatchKit Extension
//
//  Created by 村尾慶伸 on 2020/10/04.
//

import SwiftUI

@main
struct NotifyBatteryApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
