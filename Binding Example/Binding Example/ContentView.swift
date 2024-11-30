//
//  ContentView.swift
//  Binding Example
//
//  Created by Ron Erez on 01/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var color1: Color = .red
    @State private var color2: Color = .green
    @State private var color3: Color = .blue
    
    var body: some View {
        ZStack {
            Color
                .blue
                .opacity(0.2)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    RectangleView(color: color1)
                    RectangleView(color: color2)
                    RectangleView(color: color3)
                }
                
                CustomColorPicker(
                    text: "Left Rectangle",
                    selectedColor: $color1)
                CustomColorPicker(
                    text: "Center Rectangle",
                    selectedColor: $color2)
                CustomColorPicker(
                    text: "Right Rectangle",
                    selectedColor: $color3)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
