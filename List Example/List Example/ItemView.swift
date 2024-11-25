//
//  ItemView.swift
//  List Example
//
//  Created by Prinon bhowmik on 11/25/24.
//

import SwiftUI

struct ItemView: View {
    
    let i: DataItem
     
    var body: some View {
        HStack{
            VStack(alignment: .leading,spacing: 2){
                Text(i.name)
                    .font(.system(size: 24))
                    .font(.headline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                
                Text(i.hobby)
                    .font(.system(size: 18))
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            Image(systemName: i.hobbyImage)
                .foregroundStyle(.white)
                .padding(8)
                .background(Circle().stroke(.white))
        }
        .padding()
        .background(Color.teal)
        .cornerRadius(10)
    }
    
}

#Preview {
    ItemView(i: DataItem(name: "Prinon", hobby: "SwiftUI", hobbyImage: "star"))
        .padding()
}
