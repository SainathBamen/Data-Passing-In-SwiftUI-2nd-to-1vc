//
//  StateObject2.swift
//  Interview Questions Examples
//
//  Created by Sainath bamen on 19/07/25.
//

import SwiftUI
import Combine

// ViewModel: Timer logic
class TimerViewModel: ObservableObject {
    @Published var seconds = 0
    var timer: AnyCancellable?

    func start() {
        timer = Timer
            .publish(every: 1, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                self?.seconds += 1
            }
    }

    func stop() {
        timer?.cancel()
        timer = nil
    }

    func reset() {
        stop()
        seconds = 0
    }
}

// View: UI using @StateObject
struct TimerExampleView: View {
    @StateObject var viewModel = TimerViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Text("⏱️ Time: \(viewModel.seconds) sec")
                .font(.largeTitle)

            HStack(spacing: 20) {
                Button("Start") {
                    viewModel.start()
                }
                Button("Stop") {
                    viewModel.stop()
                }
                Button("Reset") {
                    viewModel.reset()
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    TimerExampleView()
}
