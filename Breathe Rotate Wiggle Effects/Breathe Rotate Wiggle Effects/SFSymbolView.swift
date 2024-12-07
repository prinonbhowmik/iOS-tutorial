//
//  SFSymbolView.swift
//  Breathe Rotate Wiggle Effects
//
//  Created by Ron Erez on 01/07/2024.
//

import SwiftUI

struct SFSymbolView: View {
    let text: String
    var body: some View {
        Image(systemName: text)
            .imageScale(.large)
            .bold()
            .symbolRenderingMode(.multicolor)
            .frame(maxWidth: .infinity)
    }
}

#Preview {
    SFSymbolView(text: "leaf.arrow.trianglehead.clockwise")
}
