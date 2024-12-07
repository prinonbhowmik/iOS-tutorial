//
//  Fun With Frames View.swift
//  Breathe Rotate Wiggle Effects
//
//  Created by Ron Erez on 03/07/2024.
//

import SwiftUI

struct AlignModifier: ViewModifier {
    var alignment: Alignment

    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: alignment)
    }
}

extension View {
    func align(alignment: Alignment) -> some View {
        self.modifier(AlignModifier(alignment: alignment))
    }
}



struct Fun_With_Frames_View: View {
    var body: some View {
        ZStack {
            // Corner-aligned Text views
            Text("Upper Left")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            Text("Upper Left")
                .align(alignment: .topLeading)
                .background(.myRed)
            
//            VStack {
//                HStack {
//                    Text("Upper Left")
//                        .foregroundStyle(.red)
//                    Spacer()
//                }
//                Spacer()
//            }

            
            Text("Upper Right")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            
            Text("Lower Left")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            
            Text("Lower Right")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            
            // Center-aligned Text views
            Text("Center Top")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            Text("Center Bottom")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            
            Text("Center Left")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            
            Text("Center Right")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
            
            // Center
            Text("Center")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
        .font(.headline)
//        .fontWidth(.condensed)
        .fontDesign(.rounded)
        .foregroundStyle(.tint)
        .padding()
    }
}

#Preview {
    Fun_With_Frames_View()
}
