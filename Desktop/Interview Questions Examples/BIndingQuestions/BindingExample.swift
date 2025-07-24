//
//  BindingExample.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 18/07/25.
//

import SwiftUI

struct ParentBindingView1: View {
    @State private var isOn = false

    var body: some View {
        VStack {
            Text(isOn ? "Light is ON" : "Light is OFF")
            BindingChildToggleView1(isOn: $isOn) // 👈 Binding pass kiya
        }
    }
}

struct BindingChildToggleView1: View {
    @Binding var isOn: Bool // 👈 Binding receive kiya

    var body: some View {
        Toggle("Switch", isOn: $isOn)
            .padding()
    }
}

#Preview {
    ParentBindingView1()
}
