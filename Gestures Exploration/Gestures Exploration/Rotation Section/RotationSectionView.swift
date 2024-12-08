
import SwiftUI

struct RotationSectionView: View {
    @State private var rotation: Double = 0.0
    
    var body: some View {
        Section(content: {
            NavigationLink(#"Rotate Gesture "Go Back""#, destination: {
                RotationGestureBounceBack()
            })
            
            NavigationLink(#"Rotate Gesture "Go Back" GS"#, destination: {
                RotationGestureBounceBackGestureState()
            })
            
            NavigationLink(#"Rotate Gesture "Stay Still""#, destination: {
                RotateGestureView()
            })

            NavigationLink(destination: {
                RotateGestureStoreState(rotation: $rotation)
            }, label: {
                VStack( alignment: .leading) {
                    Text( "Rotate Gesture")
                    Text( "Store state")
                        .fontWeight(.thin)
                }
            })
        }, header: {
            Text("Rotate Gesture Demo")
        })
    }
}

#Preview {
    Form {
        RotationSectionView()
    }
}
