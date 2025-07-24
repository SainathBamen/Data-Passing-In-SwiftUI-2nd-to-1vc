//
//  EnvironmentObject2.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 22/07/25.
//
import SwiftUI

// MARK: - ViewModel
class EnvironmentCounterViewModel: ObservableObject {
    @Published var count = 0
}

// MARK: - Main View
struct EnvironmentCounterMainView: View {
    @StateObject var viewModel = EnvironmentCounterViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("🔢 Count: \(viewModel.count)")
                    .font(.largeTitle)
                
                NavigationLink("➕ Go to Counter") {
                    SecondView()
                }
            }
            .padding()
        }
        .environmentObject(viewModel) // 👈 Very important
    }
}

// MARK: - Second View
struct SecondView: View {
    @EnvironmentObject var viewModel: EnvironmentCounterViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text("📱 Second Screen")
                .font(.title)

            Text("Count: \(viewModel.count)")
                .font(.largeTitle)

            Button("➕ Add 1") {
                viewModel.count += 1
            }

            NavigationLink("➡️ Go to Third Screen") {
                ThirdView()
            }
        }
        .padding()
    }
}

// MARK: - Third View
struct ThirdView: View {
    @EnvironmentObject var viewModel: EnvironmentCounterViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text("📲 Third Screen")
                .font(.title)

            Text("Count: \(viewModel.count)")
                .font(.largeTitle)

            Button("➕ Add 5") {
                viewModel.count += 5
            }
        }
        .padding()
    }
}

// MARK: - Previews
#Preview("Main View") {
    EnvironmentCounterMainView()
}

#Preview("Second View") {
    SecondView()
        .environmentObject(EnvironmentCounterViewModel())
}

#Preview("Third View") {
    ThirdView()
        .environmentObject(EnvironmentCounterViewModel())
}
