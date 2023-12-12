//
//  ContentView.swift
//  PinchZoomPractice
//
//  Created by insub on 12/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var scale: CGFloat = 1.0
    @GestureState private var gestureScale: CGFloat = 1.0

    var body: some View {
        Image(.sample)
            .resizable()
            .scaledToFit()
//            .frame(width: 200)
            .frame(maxWidth: .infinity)
            .scaleEffect(scale * gestureScale)
            .gesture(
                MagnificationGesture()
                    .updating($gestureScale) { (value, gestureScale, _) in
                        gestureScale = value
                    }
            )
    }
}

#Preview {
    ContentView()
}
