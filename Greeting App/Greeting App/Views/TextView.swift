

import SwiftUI

struct TextView: View {
    
    let text : LocalizedStringKey
    @State var color : Color
    let textColor : Color
    
    let colors : [Color] = [
        .myRed,
        .darkmode1,
        .myGreen,
        .myYellow,
        .orange,
        .myPurple,
        .myGreen,
        
    ]
    
    
    var body: some View {
        Text(text)
            .font(.body)
            .fontWeight(.semibold)
            .padding()
           // .foregroundStyle(textColor)
            .background(color.opacity(0.4))
            .cornerRadius(20.0)
            .shadow(color: color, radius: 5,x: 4, y: 4)
            .onTapGesture {
                //Change colors randomly
                withAnimation{
                    color = colors.randomElement() ?? .red
                }
                
            }
    
    }
}

#Preview {
    VStack{
        TextView(text: "Hello World", color: Color.red, textColor: .blue)
    }
}
