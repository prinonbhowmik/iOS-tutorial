//
//  ContentView.swift
//  Animate Everything
//
//  Created by Prinon bhowmik on 11/25/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var speed = 50.0
    @State private var isEditing = false
    
    var offset  : CGSize{
        CGSize(width: 0, height: tooglePosition ? 400 : 100)
    }
    
    @State var tooglePosition : Bool = false
    
    var color : Color{
        tooglePosition ? .red : .black
    }
    
    var font : Font{
        tooglePosition ? .headline : .title
    }
    
    var rotate : CGFloat{
        tooglePosition ? 0 : 360
    }
    
    var body: some View {
        
            VStack {
                
                Text("Hello, world!x")
                    .font(font)
                    .fontWeight(.semibold)
                    .rotationEffect(Angle(degrees: rotate))
                    .offset(offset)
                    .foregroundStyle(color)
                
                Spacer()
                
                Button{
                    withAnimation{
                        tooglePosition.toggle()
                    }
                } label : {
                    Text("Hello, world!")
                        .fontWeight(.semibold)
                }.buttonStyle(.borderedProminent)
                
                Spacer()
                
                Slider(
                        value: $speed,
                        in: 0...100,
                        step: 5
                    ) {
                        Text("Speed")
                    } minimumValueLabel: {
                        Text("0")
                    } maximumValueLabel: {
                        Text("100")
                    } onEditingChanged: { editing in
                        isEditing = editing
                    }
                
                Text("\(Int(speed))")
                        .foregroundColor(isEditing ? .red : .blue)
                
                Spacer()
            }
            .padding()
        
    }
}

#Preview {
    ContentView()
}
