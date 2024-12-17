//
//  SwiftUIView.swift
//  Recipe (Mvvm)
//
//  Created by Prinon bhowmik on 12/15/24.
//

import SwiftUI

struct ListItemView: View {
    
    let name: String
    let calories: Int
    let image: String
    
    var body: some View {
        HStack{
            Image( image)
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .shadow(radius: 10)
            
            VStack(alignment: .leading,spacing: 5){
                Text(name)
                    .font(.headline)
                    .fontWeight(.bold)
                
                Text("Calories per 100 grams: \(calories)")
                    .font(.caption)
                    .fontWeight(.semibold)
            }.padding()
            
            
        }
        .padding()
        .background(Color.blue.opacity(0.2))
        .cornerRadius(20)
    }
}

#Preview {
    ListItemView(name: "Burger", calories: 166, image: "burger")
    ListItemView(name: "Burger", calories: 166, image: "burger")
    ListItemView(name: "Burger", calories: 166, image: "burger")
    ListItemView(name: "Burger", calories: 166, image: "burger")
}
