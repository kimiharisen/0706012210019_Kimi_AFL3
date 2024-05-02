//
//  _706012210019_Kimi_AFL3App.swift
//  0706012210019_Kimi_AFL3
//
//  Created by MacBook Pro on 19/04/24.
//

import SwiftUI

@main
struct _706012210019_Kimi_AFL3App: App {
    @State private var modelData = ModelData()


    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
        #if !os(watchOS)
        .commands{
            LandmarkCommands()
        }
        #endif
        
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
        
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
}
