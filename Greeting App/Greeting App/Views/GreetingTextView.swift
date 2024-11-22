//
//  GreetingTextView.swift
//  Greeting App
//
//  Created by Prinon bhowmik on 11/19/24.
//

import SwiftUI

struct GreetingTextView: View {
    
    @Binding var subtitle :LocalizedStringKey
    
    let subtiles: [LocalizedStringKey] = [
        "Exploring iOS Programming",
        "Having fun with SwiftUI?",
        "iOS is really fun. Right?",
        "Build your own apps",
        "Exploring UiKit after that promise!",
        "Have fun & learn with me!"
    ]
    
    
    var body: some View {
        VStack(alignment: .leading,spacing: 0) {
            Text("Greeting")
                .font(.largeTitle)
                .fontWeight(.semibold)
                //.foregroundColor(.black)
            Text(subtitle)
                .font(.headline)
                .fontWeight(.thin)
        }.onTapGesture {
            subtitle = subtiles.randomElement() ?? ""
        }    }
}

#Preview {
    GreetingTextView(subtitle: .constant("Tap here to start"))
}
