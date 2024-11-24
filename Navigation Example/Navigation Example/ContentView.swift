//
//  ContentView.swift
//  Navigation Example
//
//  Created by Prinon bhowmik on 11/23/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    @State var age: String = ""
    
    var disableNavigation: Bool {
        name.isEmpty || age.isEmpty
    }
    var body: some View {
        NavigationStack {
            VStack {
                
                Spacer()
                
                TextField("Enter Name", text: $name)
                    .padding()
                    .overlay{
                        Capsule().stroke(.cyan)
                    }.padding()
                
                TextField("Enter Age", text: $age )
                    .keyboardType(.numberPad)
                    .padding()
                    .overlay{
                        Capsule().stroke(.cyan)
                    }.padding()
                
                
                Spacer()
                
                NavigationLink{
                    DisplayView(name: name, age: age)
                } label: {
                    Text("Navigate")
                        .font(.headline)
                        .padding()
                        .overlay{
                            Capsule().stroke()
                        }
                }.disabled(disableNavigation)
                
            }
            .padding()
            .navigationTitle("Navigation Example")
        }
    }
}

#Preview {
    ContentView()
}
