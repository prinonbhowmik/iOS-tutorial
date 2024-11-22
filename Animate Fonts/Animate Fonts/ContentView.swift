//
//  ContentView.swift
//  Animate Fonts
//
//  Created by Prinon bhowmik on 11/22/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var toggleFont = false
    
    var font : Font {
        toggleFont ? .largeTitle : .body    }
    
    var body: some View {
        ZStack {
            
            LinearGradient(
                colors : [.red ,.purple],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .opacity(0.7)
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                    .font(font)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                    
                
                Spacer()
                
                Button{
                    withAnimation{
                        toggleFont.toggle()
                    }
                } label: {
                    Text("Click Me to ")
                        .font(.system(size: 20))
                        .font(.title)
                        .padding()
                        .fontWeight(.semibold)
                        .foregroundStyle(.red)
                        .background(.white)
                        .cornerRadius(12)
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
