
import SwiftUI

struct Squares: View {
    let opacity: CGFloat
    
    init(opacity: CGFloat = 0.85) {
        self.opacity = opacity
    }
    
    var body: some View {
        Grid {
            SquaresRow(colors: [.red, .green, .blue])
            SquaresRow(colors: [.yellow, .indigo, .cyan])
            SquaresRow(colors: [.brown, .orange, .gray])
        }
        .opacity( opacity)
    }
}

#Preview {
    Squares()
}
