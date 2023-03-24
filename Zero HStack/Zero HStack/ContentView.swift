//
// Created for Zero HStack
// by  Stewart Lynch on 2023-03-22
// Using Swift 5.0
// Running on macOS 13.2
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Circle()
                .foregroundColor(.red)
                .frame(width: 150)
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 200, height: 250)
        }

        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension HStack {
    init(
        alignment: VerticalAlignment = .center,
        zeroSpacing: CGFloat = 0,
        @ViewBuilder content: () -> Content
    ) {
        self.init(alignment: alignment, spacing: zeroSpacing) {
            content()
        }
    }
}
