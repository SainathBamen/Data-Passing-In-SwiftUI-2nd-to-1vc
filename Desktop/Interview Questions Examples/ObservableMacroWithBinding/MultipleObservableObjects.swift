//
//  MultipleObservableObjects.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 24/07/25.
//

import SwiftUI

@Observable class MultipleObjects{
    var count = 0
    var step = 1
    var title = "Step Counter"
}

struct ParentMultipleObservableObjects: View {
    @State private var model = MultipleObjects()
    var body: some View {
        VStack(spacing: 20) {
            Text(model.title)
                .font(.title)
            
            Text("Count is: \(model.count)")
                .font(.largeTitle)
            
          
            MultipleCounterView1(multipleModels: model)
        }
        .padding()
    }
    
    
    
    struct MultipleCounterView1: View {
        @Bindable var multipleModels : MultipleObjects
        var body: some View {
            VStack(spacing: 20){
                HStack(spacing: 20){
                    Button("-"){
                        multipleModels.count -= multipleModels.step
                        
                    }
                    Button("+"){
                        multipleModels.count += multipleModels.step
                        
                    }
                    
                }
                .font(.title)
                .padding()
                
                Stepper("Step: \(multipleModels.step)", value: $multipleModels.step, in: 1...10)
                
                TextField("Edit Title", text: $multipleModels.title)
                    .textFieldStyle(.roundedBorder)
            }
            .padding()
            
        }
    }
    
}

#Preview {
    ParentMultipleObservableObjects()
}
