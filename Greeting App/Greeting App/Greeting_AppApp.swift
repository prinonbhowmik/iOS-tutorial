
import SwiftUI
import TipKit

@main
struct Greeting_AppApp: App {
    
    @AppStorage("language") var language: String = "en"
    @AppStorage("languageDirection") var languageDirection : String = LEFT_TO_RIGHT
    
    var layoutDirection: LayoutDirection {
        languageDirection == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    
    var body: some Scene {
        
        WindowGroup {
            MainView(language : $language, layoutDirectionString : $languageDirection)
                .environment(\.locale,Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
                .task {
                    try? Tips.configure([
                        .displayFrequency(.immediate),
                        .datastoreLocation(.applicationDefault)
                    ])
                }
        }
    }
}
