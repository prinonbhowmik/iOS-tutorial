//
//  LandscapeView.swift
//  Greeting App
//
//  Created by Prinon bhowmik on 11/19/24.
//

import SwiftUI

struct LandscapeView: View {
    var body: some View {
        ZStack {
            
            BackgroundView()
            
            HStack {
                
                //Title
                VerticalTextView()
                
                Spacer()
                
                MessagesView()
                
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    LandscapeView()
}
