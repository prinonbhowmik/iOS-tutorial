

import SwiftUI

struct MagnificationSectionView: View {
    @State private var scaleFactor: CGFloat = 1.0
    
    var body: some View {
        Section(content: {
            NavigationLink(#"Magnification Gesture "Go Back""#, destination: {
                MagnificationBounceBackView()
            })
            
            NavigationLink(#"Magnification Gesture "Go Back" GS"#, destination: {
                MagnificationBounceBackViewGestureState()
            })
            
            NavigationLink(#"Magnification Gesture "Stay Still""#, destination: {
                MagnificationView()
            })

            NavigationLink(destination: {
                MagnificationStoreStateView(scaleFactor: $scaleFactor)
            }, label: {
                VStack( alignment: .leading) {
                    Text( "Magnification Gesture")
                    Text( "Store state")
                        .fontWeight(.thin)
                }
            })
            
        }, header: {
            Text("Magnification Gesture Demo")
        })
    }
}

#Preview {
    Form {
        MagnificationSectionView()
    }
}
