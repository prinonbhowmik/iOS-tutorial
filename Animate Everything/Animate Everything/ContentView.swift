//
//  ContentView.swift
//  Animate Everything
//
//  Created by Prinon bhowmik on 11/25/24.
//

import SwiftUI

struct ContentView: View {
    
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
            
            Text("Hello, world!")
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
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
