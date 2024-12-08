
import SwiftUI

struct MagnificationBounceBackViewGestureState: View {
    @GestureState private var scaleFactor: CGFloat = 1.0
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
                .animation(.spring(), value: scaleFactor)
                .gesture(
                    MagnificationGesture()
                        .updating($scaleFactor, body: { value, state, transaction in
                            state = value.magnitude
                        })
                )
                
                Spacer()
            }
            .navigationTitle("Magnify and Bounce Back with Gesture State")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MagnificationBounceBackViewGestureState()
}
