//
//  TitleView.swift
//  Greeting App
//
//  Created by Prinon bhowmik on 11/19/24.
//

import SwiftUI
import TipKit

struct TitleView: View {

    
    @State private var subtitle :LocalizedStringKey = "Tap here to start"
    
    private var greetingTip = GreetingTip()
    
    var body: some View {
        HStack {
            
            GreetingTextView(subtitle: $subtitle)
                .popoverTip(greetingTip)
            
            Spacer()
            
            RotatableCircleView()
                
            
        }
    }
}

#Preview {
    VStack {
        TitleView()
        
        Spacer()
    }
    .padding()
}
