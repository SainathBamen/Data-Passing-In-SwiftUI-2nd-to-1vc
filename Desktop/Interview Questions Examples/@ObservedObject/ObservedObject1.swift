//
//  ObservedObject1.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 21/07/25.
//

import SwiftUI
import Combine

class ObservableCounterViewModel: ObservableObject{
    @Published var count = 0
    
    func increment(){
        count += 1
    }
    
}

struct StateCounterView: View{
    @StateObject var viewModel = ObservableCounterViewModel()
    var body: some View{
        NavigationStack{
            VStack(spacing: 20){
                Text("Count: \(viewModel.count)")
                    .font(.largeTitle)
                Button("➕ Increase"){
                    viewModel.increment()
                    
                }
                NavigationLink("Go to Second Screen."){
                    ObservableCounterView(ObservableViewModel: viewModel)

                    
                }
                
            }
        }
    }
}

#Preview {
    StateCounterView()
}

struct ObservableCounterView: View {
    @ObservedObject var ObservableViewModel = ObservableCounterViewModel()
    
    var body: some View {
        VStack(spacing: 20){
            Text("Second Screen Count: \(ObservableViewModel.count)")
            
            Button("➕ Button to increment count" ){
                ObservableViewModel.increment()
            }
            
        }
    }
}

