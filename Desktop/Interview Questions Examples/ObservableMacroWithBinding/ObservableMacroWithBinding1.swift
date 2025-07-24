//
//  ObservableMacroWithBinding1.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 23/07/25.
//

import SwiftUI
import Observation

//No need to add @Published before variable declearation.
@Observable
class CounterModel{
    var count = 0
}

struct ObservableMacroWithBinding1: View {
    @State private var model = CounterModel()
    var body: some View {
        Text("Count: \(model.count)")
        //Ithe BindingChildView1 sobat ObservableMacroWithBinding1 la bind kela ahe. Tya mule Parentview cha access childView la milto.
        BindingChildView1(bindingModel: model)
    }
}

struct BindingChildView1: View{
    //Don't need to add @Binding before variable declaration.
    var bindingModel: CounterModel
    var body: some View{
        Button("Increment"){
            bindingModel.count += 1
        }
        
    }
    
    
}

#Preview {
    ObservableMacroWithBinding1()
}
