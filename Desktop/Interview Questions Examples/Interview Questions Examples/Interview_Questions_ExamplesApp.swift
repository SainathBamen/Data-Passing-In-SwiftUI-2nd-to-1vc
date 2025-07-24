//
//  Interview_Questions_ExamplesApp.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 17/02/25.
//

import SwiftUI

@main
struct MyApp: App {
    @State private var settings = AppSettings() // 👈 AppSettings instance

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(settings) // 👈 Inject into environment
        }
    }
}
