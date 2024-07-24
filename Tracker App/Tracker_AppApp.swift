//
//  Tracker_AppApp.swift
//  Tracker App
//
//  Created by Furkan İSLAM on 6.07.2024.
//

import SwiftUI
import WidgetKit

@main
struct Tracker_AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    WidgetCenter.shared.reloadAllTimelines()
                }
        }
        .modelContainer(for: [Transaction.self])
    }
}
