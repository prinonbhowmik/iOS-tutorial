//
//  MagnificationStoreStateView.swift
//  Gestures Exploration
//
//  Created by Ron Erez on 18/10/2024.
//

import SwiftUI

struct MagnificationStoreStateView: View {
    @Binding var scaleFactor: CGFloat
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                NiceTextView(
                    text: /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/,
                    bgColor: .black,
                    fgColor: .orange,
                    radius: 10)
                .scaleEffect( scaleFactor)
                .gesture(
                    MagnificationGesture()
                        .onChanged { value in
                            withAnimation(.spring()) {
                                scaleFactor = value
                            }
                        }
                )
                
                Spacer()
            }
            .navigationTitle("Magnify and Store State")
            .navigationBarTitleDisplayMode(.inline)
        }
    }

}


#Preview {
    MagnificationStoreStateView(scaleFactor: .constant(1.0))
}
