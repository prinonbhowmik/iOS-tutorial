
import SwiftUI

struct MainView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPhonepotarit: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var isIPadPotarit: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    @Binding var language: String
    @Binding var layoutDirectionString : String

    
    var body: some View {
        if isPhonepotarit || isIPadPotarit {
            NavigationStack{
                GreetingView()
                    .toolbar{
                        ToolbarItem(placement: .topBarTrailing){
                            LanguageOptionsTapView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
            
        }else{
            NavigationStack{
                LandscapeView()
                    .toolbar{
                        ToolbarItem(placement: .topBarTrailing){
                            LanguageOptionsTapView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
            
        }
    }
}

#Preview {
    MainView(
        language: .constant("en"),
        layoutDirectionString: .constant(LEFT_TO_RIGHT)
    )
}
