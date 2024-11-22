//
//  VerticalTextView.swift
//  Greeting App
//
//  Created by Prinon bhowmik on 11/20/24.
//

import SwiftUI

struct VerticalTextView: View {
    @State private var subtitle :LocalizedStringKey = "Tap here to start"
    
    var body: some View {
        VStack(alignment: .leading){
            
            GreetingTextView(subtitle: $subtitle)
            
            RotatableCircleView()
                
            Spacer()
        }.padding()
    }
}

#Preview {
    VerticalTextView()
}
