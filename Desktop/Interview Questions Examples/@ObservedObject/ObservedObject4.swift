//
//  ObservedObject4.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 19/07/25.
//

import SwiftUI

// Step 1: ViewModel

class ThemeViewModel: ObservableObject {
    @Published var selectedTheme: String = "Light"
}

//FirstView.
struct ThemeSettingsView: View {
    @StateObject var viewModel = ThemeViewModel()

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("🎨 Current Theme: \(viewModel.selectedTheme)")
                    .font(.title)
                    .foregroundColor(viewModel.selectedTheme == "Dark" ? .white : .black)
                
                    .padding()
                
                    .background(viewModel.selectedTheme == "Dark" ? .black : .white)
                    .cornerRadius(10)
                    .shadow(radius: 5)

                NavigationLink("🛠 Edit Theme") {
                    EditThemeView(viewModel: viewModel)
                }
            }
            .padding()
            .background(viewModel.selectedTheme == "Dark" ? Color.blue : Color.white)
        }
    }
}

struct EditThemeView: View {
    @ObservedObject var viewModel: ThemeViewModel

    let themes = ["Light", "Dark"]

    var body: some View {
        Form {
            Picker("Select Theme", selection: $viewModel.selectedTheme) {
                ForEach(themes, id: \.self) { theme in
                    Text(theme)
                }
            }
            .pickerStyle(.segmented)
        }
        .navigationTitle("Edit Theme")
    }
}

// Preview
#Preview {
    ThemeSettingsView()
}
