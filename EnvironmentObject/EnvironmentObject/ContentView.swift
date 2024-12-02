//
//  ContentView.swift
//  EnvironmentObject
//
//  Created by Prinon bhowmik on 12/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userViewModel: UserViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
//                Text(userViewModel.name)
                
                TextField("Enter Name", text: $userViewModel.name)
                    .multilineTextAlignment(.center)
                    .padding()
                    .overlay{
                        Capsule().stroke(.cyan)
                    }.padding()
                    .cornerRadius(12)
                    
                
                NavigationLink("Update Data", destination: UserDataView()
                )
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(UserViewModel())
}
