//
//  ContentView.swift
//  Group Box Example
//
//  Created by Prinon bhowmik on 11/29/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var enableNotification = true
    @State private var darkMode = true
    
    
    var color : Color {
        if darkMode {
            return .black
        } else {
            return .white
        }
    }
    
    
    var body: some View {
        ZStack {
            
            Color( color) .ignoresSafeArea()
            
            
            GroupBox(){
                
                VStack(alignment: .leading){
                    Toggle("Notification",isOn: $enableNotification)
                        .onChange(of: enableNotification){
                            
                            print("\(enableNotification)")
                            
                        }
                    Toggle("Dark Mode",isOn: $darkMode)
                    
                }
                
            } label: {
                Label("Settings", systemImage: "gearshape.fill")
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
    }
}

#Preview {
    ContentView()
}
