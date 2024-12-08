
import SwiftUI

struct NiceTextView: View {
    let text: String
    let bgColor: Color
    let fgColor: Color
    let radius: CGFloat
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.semibold)
            .foregroundStyle(fgColor)
            .padding()
            .background(bgColor)
            .clipShape(.rect(cornerRadius: radius))
    }
}

#Preview {
    NiceTextView(
        text: "Hello, World!",
        bgColor: .black,
        fgColor: .orange,
        radius: 10)
}
