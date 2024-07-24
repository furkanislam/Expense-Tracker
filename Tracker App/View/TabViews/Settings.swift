//
//  Settings.swift
//  Tracker App
//
//  Created by Furkan İSLAM on 6.07.2024.
//

import SwiftUI

struct Settings: View {
    /// User Properties
    @AppStorage("userName") private var userName : String = ""
    // App Lock Properties
    @AppStorage("isAppLockEnabled") private var isAppLockEnable : Bool = false
    @AppStorage("lockWhenAppGoesBackground") private var lockWhenAppGoesBackground : Bool = false

    var body: some View {
        NavigationStack {
            List {
                Section("User Name") {
                    TextField("iJustine", text: $userName)
                }
                
                Section("App Lock") {
                    Toggle("Enable App Lock", isOn: $isAppLockEnable)
                    
                    if isAppLockEnable {
                        Toggle("Lock When App Goes Background", isOn: $lockWhenAppGoesBackground)
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    ContentView()
}
