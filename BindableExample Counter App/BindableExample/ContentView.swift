//
//  ContentView.swift
//  BindableExample
//
//  Created by Prinon bhowmik on 12/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @Bindable var vm : CounterViewModel
    
    var body: some View {
        VStack(alignment: .center) {
            
            Text("\(vm.counter)")
                .font(.system(size: 100))
                .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .top)
            
            
            HStack() {
                Button(action: { vm.counter += 1 },label: {
                    Text("+")
                        .font(.system(size: 30))
                        .frame(width: 50, height: 100)
                        .foregroundColor(Color.black)
                        .background(Color.blue)
                        .clipShape(Circle())
                })
                
                
                Spacer()
                Button(action: {
                    if vm.counter > 0 { vm.counter -= 1 }
                }) {
                    Text("-")
                        .font(.system(size: 30))
                        .frame(width: 50, height: 100)
                        .foregroundColor(Color.black)
                        .background(Color.red)
                        .clipShape(Circle())
                }
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .center)
            .padding()
            
            
            
            Button(action: { vm.counter = 0 }) {
                Text("Reset")
                    .font(.system(size: 30))
                    .padding()
                    .foregroundColor(Color.black)
            }
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
        .padding()
    }
}

#Preview {
    ContentView(vm: CounterViewModel())
}
