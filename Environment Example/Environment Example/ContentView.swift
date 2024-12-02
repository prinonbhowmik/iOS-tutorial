//
//  ContentView.swift
//  Environment Example
//
//  Created by Prinon bhowmik on 12/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(PersonViewModel.self) private var personViewModel
    
    var body: some View {
        

        
        VStack {
            
            Text(personViewModel.getName)
            
            Button("Change Names",action: {
                personViewModel.changeName()
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(PersonViewModel())
}
