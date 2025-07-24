//
//  ObservableMacroWithBinding2.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 23/07/25.
//

import SwiftUI
import Observation

@Observable
class ToggleViewModel {
    //Sagla kam ya isOn mule hot ahe.
    var isOn: Bool = false
}

struct ObservableMacroWithBinding2: View {
    @State private var model = ToggleViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Text("Switch is \(model.isOn ? "ON" : "OFF")")

            // 👇 Pass model to child view
            ToggleSwitchView(model: model)
            StatusView(model: model)
        }
        .padding()
    }
}

struct ToggleSwitchView: View {
    //Multiple View jr use karaycha asel tr @Bindable use karava lagto.
   @Bindable var model: ToggleViewModel

    var body: some View {
        // 👇 Use the instance's property with $
        Toggle("Enable Option", isOn: $model.isOn)
            .toggleStyle(.switch)
            .padding()
    }
}

struct StatusView: View {
  @Bindable var model: ToggleViewModel
    var body: some View {
        Text(model.isOn ? "✅ Option Enabled" : "❌ Option Disabled")
            .foregroundColor(model.isOn ? .green : .red)
    }
}

#Preview {
    ObservableMacroWithBinding2()
}
