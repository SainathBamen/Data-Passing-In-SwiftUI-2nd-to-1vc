//
//  @Multiple binding with ObservableMAcro.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 23/07/25.
//

import SwiftUI

@Observable
class MultipleObject{
    var count = 0
}

struct _Multiple_binding_with_ObservableMAcro: View {
    @State private var model = MultipleObject()
    var body: some View {
        VStack(spacing: 20){
            Text("Main Count: \(model.count)")
            
            BindingChildView3(bindingModel1: model)
            BindingChildView4(bindingModel2: model)
            
        }
    }
}

struct BindingChildView3: View{
    var bindingModel1: MultipleObject
    var body: some View{
        VStack(spacing: 20){
            Button(" BindingChildView3 +Increament"){
                bindingModel1.count += 1
                
            }
        }
    }
}

struct BindingChildView4: View {
    var bindingModel2: MultipleObject
    var body: some View {
        VStack(spacing: 20){
            Button("BindingChildView4 +Increament"){
                bindingModel2.count += 1
                
            }
            
        }
    }
}

#Preview {
    _Multiple_binding_with_ObservableMAcro()
}
