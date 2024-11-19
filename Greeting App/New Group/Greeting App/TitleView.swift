//
//  TitleView.swift
//  Greeting App
//
//  Created by Prinon bhowmik on 11/19/24.
//

import SwiftUI

struct TitleView: View {
    
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    
    @State private var subtitle :LocalizedStringKey = "Tap here to start"
    
    let subtiles: [LocalizedStringKey] = [
        "Exploring iOS Programming",
        "Having fun with SwiftUI?",
        "iOS is really fun. Right?",
        "Build your own apps",
        "Exploring UiKit after that promise!",
        "Have fun & learn with me!"
    ]
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var anuglarGradient: AngularGradient {
        AngularGradient.init(
            gradient: Gradient(
                colors: [.pink, .purple, .orange, .green, .red, .blue]
            ),
            center: .center,
            angle: .zero)
    }
    
    var body: some View {
        HStack {
            
            VStack(alignment: .leading,spacing: 0) {
                Text("Greeting")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    //.foregroundColor(.black)
                Text(subtitle)
                    .font(.headline)
                    .fontWeight(.thin)
            }.onTapGesture {
                subtitle = subtiles.randomElement() ?? ""
            }
            
            Spacer()
            
            Circle()
                .strokeBorder(
                    anuglarGradient,
                    lineWidth: lineWidth
                )
                .rotationEffect(angle)
                .frame(width: diameter, height: diameter)
                .onTapGesture {
                    withAnimation{
                        isRotated.toggle()
                    }
                    
                }
                
            
        }
    }
}

#Preview {
    VStack {
        TitleView()
        
        Spacer()
    }
    .padding()
}
