//
//  ContentView.swift
//  MeshGradient with Nutshell
//
//  Created by Prinon bhowmik on 11/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MeshGradient(
            width: 3,
            height: 3,
            points:
                [
            .init(0, 0), .init(0.5, 0), .init(1, 0),
            .init(0, 0.5), .init(0.5, 0.5), .init(1, 0.5),
            .init(0, 1), .init(0.5, 1), .init(1, 1)
            ],
            colors:
                [
            .red, .purple, .indigo,
            .orange, .white, .blue,
            .yellow, .green, .mint
                ]
        )
        .ignoresSafeArea()
    
    }
}

#Preview {
    ContentView()
}
