//
//  @EnvironmentView3.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 19/07/25.
//

import SwiftUI

struct FocusExampleView: View {
    @FocusState private var isTextFieldFocused: Bool

    var body: some View {
        VStack(spacing: 20) {
            TextField("Enter text", text: .constant(""))
                .focused($isTextFieldFocused)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Text(isTextFieldFocused ? "TextField is Focused" : "Not Focused")
                .foregroundColor(isTextFieldFocused ? .green : .red)
        }
        .padding()
    }
}

#Preview {
    FocusExampleView()
}
