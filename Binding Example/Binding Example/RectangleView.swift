//
//  RectangleView.swift
//  Binding Example
//
//  Created by Ron Erez on 01/01/2024.
//

import SwiftUI

struct RectangleView: View {
    let dim: CGFloat
    let color: Color
    
    init(dim: CGFloat = 50, color: Color) {
        self.dim = dim
        self.color = color
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(color)
            .frame(width: dim, height: dim)
    }
}

#Preview {
    RectangleView( color: .blue)
}
