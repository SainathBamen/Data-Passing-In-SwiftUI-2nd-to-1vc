//
//  EnvironmentObject.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 22/07/25.
//

import SwiftUI

// ✅ Fixed: class name without extra 's'
class EnvironmentSettingsViewModel: ObservableObject {
    @Published var notificationsEnabled: Bool = true
}

struct MainView: View {
    @StateObject var viewModel = EnvironmentSettingsViewModel()

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("🔔 Notifications: \(viewModel.notificationsEnabled ? "On" : "Off")")

                // ✅ Fixed: correct view name
                NavigationLink("Go to Settings") {
                    SettingView()
                }
            }
            .padding()
        }
        .environmentObject(viewModel)
    }
}

// ✅ Fixed: view name matches NavigationLink
struct SettingView: View {
    @EnvironmentObject var viewModel: EnvironmentSettingsViewModel

    var body: some View {
        Toggle("Enable Notifications", isOn: $viewModel.notificationsEnabled)
            .padding()
            .navigationTitle("Settings")
    }
}

#Preview {
    MainView()
}
