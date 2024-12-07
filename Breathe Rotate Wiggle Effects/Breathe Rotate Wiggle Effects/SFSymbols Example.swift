//
//  SFSymbols Example.swift
//  Breathe Rotate Wiggle Effects
//
//  Created by Ron Erez on 02/07/2024.
//

import SwiftUI

struct SFSymbols_Example: View {
    @State private var isAnimating = false
    
    var body: some View {
        VStack(spacing: 30) {
            SFSymbolView(text: "leaf.arrow.trianglehead.clockwise")
                .symbolEffect(
                    .rotate.clockwise.byLayer,
                    value: isAnimating
                )
            
            SFSymbolView(text: "leaf.arrow.trianglehead.clockwise")
                .symbolEffect(
                    .bounce.down.byLayer,
                    value: isAnimating
                )
            
            SFSymbolView(text: "leaf.arrow.trianglehead.clockwise")
                .symbolEffect(
                    .wiggle.custom(angle: -30.0).wholeSymbol,
                    value: isAnimating
                )

            
            Button {
                isAnimating.toggle()
            } label: {
                Text("Animate")
            }

        }
        .font(.largeTitle)
    }
}

#Preview {
    SFSymbols_Example()
}
