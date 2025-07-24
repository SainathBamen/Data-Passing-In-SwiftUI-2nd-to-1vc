//
//  EnvironmentView.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 18/07/25.
//

import SwiftUI

struct DetailParentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.blue.opacity(0.3)
                    .ignoresSafeArea() // 🔵 Blue background under content
                VStack {
                    NavigationLink("Go to Child Detail View", destination: DetailChildView())
                        .padding()
                }
            }
            .navigationTitle("Parent View")
        }
    }
}

struct DetailChildView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            Text("Detail Screen")
            Button("Go Back") {
                dismiss()
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow) // 🟡 Yellow background for child
        .ignoresSafeArea()
    }
}

#Preview {
    DetailParentView()
}

