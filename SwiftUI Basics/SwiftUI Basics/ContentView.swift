//
//  ContentView.swift
//  SwiftUI Basics
//
//  Created by Prinon bhowmik on 11/21/24.
//

import SwiftUI

struct ContentView: View {
    
    let colorList1 :[Color] = [.blue,.gray,.indigo]
    let colorList2 :[Color] = [.pink,.red,.purple]
    
    @State var screenTapped :Bool = false
    
    @State private var offSetY :CGFloat = -1000
    
    var colorChange:[Color] {
        screenTapped ? colorList1 : colorList2
    }
    
    var body: some View {
        ZStack {
            
            LinearGradient(colors : colorChange, startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.7)
                .ignoresSafeArea()
            
            Text("SwiftUI basics" )
                .font(.system(size: 26))
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .padding()
                .offset(y : offSetY)
                .rotation3DEffect(
                    .degrees(screenTapped ? 0 : 360),
                    axis: (x : 1, y : 1, z : 1))
        }
        .onTapGesture {
            screenTapped.toggle()
            withAnimation(.easeIn(duration: 0.3)){
                offSetY = screenTapped ? 0 : -1000
            }
            
        }
            
    }
}

#Preview {
    ContentView()
}
