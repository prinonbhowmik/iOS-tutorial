
import Foundation
import TipKit

struct GreetingTip :Tip{
    var title: Text {
        Text("Click on the text & circle")
    }
    
    var message: Text? {
        Text("Text will change & circle will animated")
    }
    var asset: Image? {
        Image(systemName: "questionmark.app.dashed")
    }
}
