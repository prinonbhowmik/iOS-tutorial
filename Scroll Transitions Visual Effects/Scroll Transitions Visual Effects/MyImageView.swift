//
//  MyImageView.swift
//  Scroll Transitions Visual Effects
//
//  Created by Prinon bhowmik on 11/30/24.
//

import SwiftUI

struct MyImageView: View {
    
    let name : String
    let mxWidth : CGFloat?
    
    init(name: String, mxWidth: CGFloat? = nil) {
        self.name = name
        self.mxWidth = mxWidth
    }
    
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
            .clipShape(.rect(cornerRadius: 20))
            .padding()
            .frame(maxWidth: mxWidth)
    }
}

#Preview {
    MyImageView(name: "tree")
}
