//
//  StateObject.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 19/07/25.
//

import SwiftUI

class CounterViewModel: ObservableObject{
    @Published var count = 0
    
    func increament(){
        count += 1
    }
}

struct StateObjectView: View {
    @StateObject var viewModel = CounterViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Text("Count: \(viewModel.count)")
                .font(.largeTitle)

            Button("Increment") {
                viewModel.increament()
            }
        }
        .padding()
    }
}

#Preview {
    StateObjectView()
}
