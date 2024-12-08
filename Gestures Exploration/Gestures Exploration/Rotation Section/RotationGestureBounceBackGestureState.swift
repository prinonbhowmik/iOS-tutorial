//
//  RotationGestureBounceBackGestureState.swift
//  Gestures Exploration
//
//  Created by Ron Erez on 28/10/2024.
//

import SwiftUI

struct RotationGestureBounceBackGestureState: View {
    @GestureState private var rotation: Double = 0.0
    var body: some View {
        NavigationStack {
            NiceTextView(
                text: "Hello, World!",
                bgColor: .black,
                fgColor: .orange,
                radius: 10)
            .rotationEffect( Angle(degrees: rotation))
            .animation(
                .spring(),
                value: rotation
            )
            .gesture(
                RotationGesture()
                    .updating($rotation, body: { value, state, transaction in
                        state = value.degrees
                    })
            )
            .navigationTitle("Rotation Demo Bounce Back Gesture State")
            .navigationBarTitleDisplayMode(.inline)
            
            
        }
    }
}

#Preview {
    RotationGestureBounceBackGestureState()
}
