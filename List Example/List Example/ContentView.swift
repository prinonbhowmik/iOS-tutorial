//
//  ContentView.swift
//  List Example
//
//  Created by Prinon bhowmik on 11/25/24.
//

import SwiftUI

struct ContentView: View {
    
    var item :[DataItem] = [
        .init(name: "Prinon", hobby: "Football", hobbyImage: "figure.indoor.soccer"),
        .init(name: "Arpita", hobby: "Travel", hobbyImage: "figure.hiking"),
        .init(name: "Prithul", hobby: "Cricket", hobbyImage: "figure.cricket"),
        .init(name: "Shuvo", hobby: "Riding", hobbyImage: "motorcycle.fill"),
        .init(name: "Akash", hobby: "Singing", hobbyImage: "guitars.fill"),
        .init(name: "Akash", hobby: "Singing", hobbyImage: "guitars.fill"),
        .init(name: "Akash", hobby: "Singing", hobbyImage: "guitars.fill"),
        .init(name: "Akash", hobby: "Singing", hobbyImage: "guitars.fill"),
        .init(name: "Akash", hobby: "Singing", hobbyImage: "guitars.fill"),
        .init(name: "Akash", hobby: "Singing", hobbyImage: "guitars.fill"),
        .init(name: "Akash", hobby: "Singing", hobbyImage: "guitars.fill"),
        .init(name: "Akash", hobby: "Singing", hobbyImage: "guitars.fill"),
        .init(name: "Akash", hobby: "Singing", hobbyImage: "guitars.fill"),
        .init(name: "Akash", hobby: "Singing", hobbyImage: "guitars.fill"),
        
    ]
    
    
    
    var body: some View {
        List(item){
            
            i in
            
            ItemView(i: i)
            .listRowSeparator(.hidden)
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 12, trailing: 0))
            
          /*  HStack{
                VStack{
                    Text(i.name)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                    Text(i.hobby)
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
                
                Spacer()
                
                Image(systemName: i.hobbyImage)
            }.padding()
           */
        }
        .scrollContentBackground(.hidden)
        
        
    
        
    }
}

#Preview {
    ContentView()
}
