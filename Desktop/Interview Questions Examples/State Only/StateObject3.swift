//
//  StateObject3.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 22/07/25.
//

import SwiftUI

struct StateObject3: View {
    @State private var name = ""
    var body: some View {
        VStack(spacing: 20){
            TextField("Enter your name", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Hello, \(name)!")
            
        }
        .padding()
    }
}

#Preview {
    StateObject3()
}
