//
//  ContentView.swift
//  Exploring Text Renderer
//
//  Created by Ron Erez on 20/06/2024.
//

import SwiftUI

enum RenderType: String, CaseIterable {
    case blur
    case wobble
}

struct ContentView: View {
    @State private var renderType: RenderType = .blur
    @State private var blur = 1.0
    let heart = Image(systemName: "heart.fill")
    
    var helloWorld: Text {
        Text("Hello \(heart) World")
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundStyle(.red)
            .customAttribute(CustomAttr())
    }
    
    var body: some View {
        VStack {
            Picker("Render Type", selection: $renderType) {
                ForEach(RenderType.allCases, id: \.self) { type in
                    Text(type.rawValue)
                    .tag(type)
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            Text("Yet another \"\(helloWorld)\" example.")
                .font(.title)
                .multilineTextAlignment(.center)
                .textRenderer(Renderer(value: blur, renderType: renderType))
            
            Spacer()
            
            Slider(value: $blur, in: 0...10)
            
        }
        .padding()
    }
}

struct Renderer: TextRenderer {
    let value: CGFloat
    let renderType: RenderType
    
    func draw(layout: Text.Layout, in ctx: inout GraphicsContext) {
        let allLines = layout
            .flatMap( { $0 })
        
        for line in allLines {
            // Extract custom attribute text
            if line[CustomAttr.self] != nil {
                var localContext = ctx
                
                switch renderType {
                case .blur:
                    let blurFilter = GraphicsContext
                        .Filter.blur(radius: value)
                    
                    localContext
                        .addFilter(blurFilter)
                case .wobble:
                    let wobbleFilter = GraphicsContext
                        .Filter
                        .distortionShader(
                            ShaderLibrary.wobble(.float(value)),
                            maxSampleOffset: .zero
                        )
                    
                    localContext
                        .addFilter(wobbleFilter)
                }

                
                
                localContext
                    .draw(line)
            } else {
                let localContext = ctx
                localContext
                    .draw(line)
            }
        }
    }
    
    
}

struct CustomAttr: TextAttribute {
    // Additional Properties
}

#Preview {
    ContentView()
}
