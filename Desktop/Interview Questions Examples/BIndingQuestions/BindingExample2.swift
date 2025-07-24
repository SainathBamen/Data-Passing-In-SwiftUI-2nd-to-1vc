//
//  BindingExample2.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 18/07/25.
//

import SwiftUI

struct SheetMainView: View {
    @State private var showSheet = false

    var body: some View {
        Button("Open Sheet") {
            showSheet = true
        }
        .sheet(isPresented: $showSheet) {
            SheetView(showSheet: $showSheet)
        }
    }
}

struct SheetView: View {
    @Binding var showSheet: Bool

    var body: some View {
        VStack {
            Text("This is a sheet")
            Button("Close") {
                showSheet = false
            }
        }
    }
}

#Preview{
    SheetMainView()
}
