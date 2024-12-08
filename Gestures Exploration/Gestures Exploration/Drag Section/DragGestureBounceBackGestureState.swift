//
//  DragGestureBounceBackGestureState.swift
//  Gestures Exploration
//
//  Created by Ron Erez on 28/10/2024.
//

import SwiftUI

struct DragGestureBounceBackGestureState: View {
    @GestureState private var offset: CGSize = .zero
    
    var body: some View {
        NavigationStack {
            VStack {
                Squares()
                
                Spacer()
                
                NiceTextView(
                    text: /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/,
                    bgColor: .black.opacity(0.7),
                    fgColor: .orange.opacity(0.85),
                    radius: 10)
                .offset(offset)
                .animation(.spring(), value: offset)
                .gesture(
                    DragGesture()
                        .updating($offset, body: { value, state, transaction in
                            state = value.translation
                        })
                )
                
                Spacer()
            }
            .navigationTitle("Drag and Bounce Back Gesture State")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    DragGestureBounceBackGestureState()
}
