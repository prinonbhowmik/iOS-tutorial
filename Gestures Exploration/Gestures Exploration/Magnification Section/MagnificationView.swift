
import SwiftUI

struct MagnificationView: View {
    @State private var scaleFactor: CGFloat = 1.0
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
            .navigationTitle("Magnify and Stay Still")
            .navigationBarTitleDisplayMode(.inline)
        }
    }

}

#Preview {
    MagnificationView()
}
