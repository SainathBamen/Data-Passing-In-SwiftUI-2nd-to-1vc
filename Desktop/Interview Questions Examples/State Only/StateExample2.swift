//
//  StateExample2.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 22/07/25.
//

import SwiftUI

struct StateExample2: View {
    @State private var isOn = false
    var body: some View {
        VStack(spacing: 20){
            Toggle("Switch", isOn: $isOn)
            
            Text(isOn ? "✅ Switch is ON" : "❌ Switch is OFF")
            
        }
        .padding()
    }
}

#Preview {
    StateExample2()
}
