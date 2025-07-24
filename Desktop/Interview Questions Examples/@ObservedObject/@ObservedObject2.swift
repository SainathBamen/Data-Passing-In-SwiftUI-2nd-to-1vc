//
//  @ObservedObject2.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 21/07/25.
//

import SwiftUI

class UserViewModel: ObservableObject {
    @Published var name: String = "Sainath"
    @Published var age: Int = 28
}

struct ProfileView: View {
    @StateObject var viewModel = UserViewModel()

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("👤 Name: \(viewModel.name)")
                Text("🎂 Age: \(viewModel.age)")
                
                NavigationLink("✏️ Edit Profile") {
                    EditProfileView(viewModel: viewModel)
                }
            }
            .font(.title2)
            .padding()
        }
    }
}

struct EditProfileView: View {
    @ObservedObject var viewModel: UserViewModel

    var body: some View {
        Form {
            TextField("Enter name", text: $viewModel.name)
            Stepper("Age: \(viewModel.age)", value: $viewModel.age, in: 1...100)
        }
        .navigationTitle("Edit Profile")
    }
}
#Preview {
    ProfileView()
}
