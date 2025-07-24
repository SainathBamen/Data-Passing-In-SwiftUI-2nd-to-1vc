//
//  BindingExample3.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 18/07/25.
//

import SwiftUI

struct ColorPickerParent: View {
    @State private var selectedColor = Color.red

    var body: some View {
        VStack {
            ColorPickerView(selectedColor: $selectedColor)
            RoundedRectangle(cornerRadius: 10)
                .fill(selectedColor)
                .frame(width: 100, height: 100)
        }
    }
}

struct ColorPickerView: View {
    @Binding var selectedColor: Color

    var body: some View {
        ColorPicker("Pick a color", selection: $selectedColor)
            .padding()
    }
}

#Preview{
    ColorPickerParent()
}
