//
//  StateObject4.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 22/07/25.
//

//import SwiftUI
//
//struct StateObject4: View {
//    @State private var showPassword = false
//    var body: some View {
//        VStack(spacing: 10){
//            if showPassword {
//                Text("🔓 Password is visible")
//            }else{
//                Text("🔒 Password is hidden")
//
//            }
//            Button(showPassword ? "Hide" : "Show"){
//                showPassword.toggle()
//
//            }
//            
//        }
//    }
//}
//
//#Preview {
//    StateObject4()
//}

import SwiftUI

struct MultiButtonExample: View {
    @State private var like = 0
    @State private var dislike = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("👍 Likes: \(like)")
            Text("👎 Dislikes: \(dislike)")

            HStack {
                Button("👍 Like") {
                    like += 1
                }

                Button("👎 Dislike") {
                    dislike += 1
                }
            }
        }
        .padding()
    }
}
#Preview{
    MultiButtonExample()
}
