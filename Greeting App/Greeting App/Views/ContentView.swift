
import SwiftUI

struct ContentView: View {
    
    let data: [DataModel] = [
        .init(text: "Prinon Bhowmik", color: Color.red,textColor: .black),
        .init(text: "Arpita Ghosh Chowdhury", color: .black,textColor: .red),
        .init(text: "Sabita Rani Debi", color: .gray,textColor: .black),
        .init(text: "Prithul Bhowmik", color: Color.blue,textColor: .white),
        .init(text: "Hello World is not enough, we need to learn SwiftUI", color: Color.purple,textColor: .white),
        ]
    
    var body: some View {
        ZStack {
            
        
            LinearGradient(colors: [
                .blue,
                Color(red: 139/255, green: 80/255, blue: 240/255)
            ],
                startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.3)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                //Title
                TitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
