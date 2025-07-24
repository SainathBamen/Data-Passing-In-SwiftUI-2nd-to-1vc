//
//  EnvironmentView2.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 19/07/25.
//

import SwiftUI

struct ThemeView: View {
    @Environment(\.colorScheme) var systemColorScheme

    var body: some View {
        VStack(spacing: 30) {
            Text("Theme is \(systemColorScheme == .dark ? "🌙 Dark" : "☀️ Light")")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(systemColorScheme == .dark ? .white : .black)

            Image(systemName: systemColorScheme == .dark ? "moon.stars.fill" : "sun.max.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(systemColorScheme == .dark ? .yellow : .orange)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(systemColorScheme == .dark ? Color.black : Color.white)
        .ignoresSafeArea()
    }
}

#Preview {
    ThemeView()
}
