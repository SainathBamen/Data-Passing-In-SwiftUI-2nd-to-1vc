//
//  StateExample1.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 22/07/25.
//

import SwiftUI

struct StateExample1: View {
    @State private var count = 0
    
    var body: some View {
        VStack(spacing: 20){
            Text("Count: \(count)")
                .font(.largeTitle)
            Button("➕ Add 1"){
                count += 1
                
            }
        }
        .padding()
    }
}

#Preview {
    StateExample1()
}
