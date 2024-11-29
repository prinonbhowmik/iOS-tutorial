//
//  ContentView.swift
//  Scroll Transitions Visual Effects
//
//  Created by Prinon bhowmik on 11/30/24.
//

import SwiftUI

struct ScrollTransitionExample1: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack(spacing: 10){
                ForEach(images, id: \.self){ img in
                    ZStack {
                        MyImageView(name: img)
                            .scrollTransition(axis : .horizontal){ content, phase in
                                let value = phase.value
                                
                                return content .opacity(value + 1)
                            }
                    }
                    .containerRelativeFrame(.horizontal)
                }
            }
        }.scrollIndicators(.hidden)
    }
}

#Preview {
    ScrollTransitionExample1()
}
