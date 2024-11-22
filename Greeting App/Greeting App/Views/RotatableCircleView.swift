//
//  RotatableCircleView.swift
//  Greeting App
//
//  Created by Prinon bhowmik on 11/20/24.
//

import SwiftUI

struct RotatableCircleView: View {
    
    
    let lineWidth = 15.0
    let diameter = 70.0
    
    
    @State private var isRotated: Bool = false
    
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

#Preview {
    RotatableCircleView()
}
