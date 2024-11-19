//
//  MessagesView.swift
//  Greeting App
//
//  Created by Prinon bhowmik on 11/19/24.
//

import SwiftUI

struct MessagesView: View {
    let data: [DataModel] = [
        .init(text: "Prinon Bhowmik", color: Color("myGreen"),textColor: .black),
        .init(text: "Arpita Ghosh Chowdhury", color: Color("myYellow"),textColor: .black),
        .init(text: "Sabita Rani Debi", color: Color("myGray"),textColor: .black),
        .init(text: "Prithul Bhowmik", color: Color("myPurple"),textColor: .white),
        .init(text: "Hello World is not enough, we need to learn SwiftUI", color: Color("myRed"),textColor: .white),
        ]
    
    var body: some View {
        ForEach(data) { element in
            TextView(text: element.text, color: element.color,textColor: element.textColor)
        }
    }
}

#Preview {
    MessagesView()
}
