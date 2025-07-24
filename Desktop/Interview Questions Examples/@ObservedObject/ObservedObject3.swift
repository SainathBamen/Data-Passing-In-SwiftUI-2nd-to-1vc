//
//  ObservableObject3.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 19/07/25.
//

import SwiftUI

// Step 1: ViewModel
class SettingsViewModel: ObservableObject {
    @Published var notificationsEnabled: Bool = true
}

// Step 2: Main View with @StateObject
struct SettingsView: View {
    @StateObject var settingViewModel = SettingsViewModel()

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                Text("🔔 Notifications: \(settingViewModel.notificationsEnabled ? "On" : "Off")")
                
                NavigationLink("⚙️ Edit Settings") {
                    EditSettingsView(editViewModel: settingViewModel)
                }
            }
            .font(.title2)
            .padding()
        }
    }
}

// Step 3: Edit View with @ObservedObject
struct EditSettingsView: View {
    @ObservedObject var editViewModel: SettingsViewModel

    var body: some View {
        Form {
            Toggle("Enable Notifications", isOn: $editViewModel.notificationsEnabled)
        }
        .navigationTitle("Edit Settings")
    }
}

// Preview
#Preview {
    SettingsView()
}

