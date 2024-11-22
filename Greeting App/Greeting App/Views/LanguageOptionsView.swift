

import SwiftUI

struct LanguageOptionsTapView: View {
    
    @Binding var language: String
    @Binding var layoutDirectionString : String
    
    
    var body: some View {
        Menu {
            Button("English"){
                language = "en"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            Button("Arabic"){
                language = "ar"
                layoutDirectionString = RIGHT_TO_LEFT
            }
            Button("French"){
                language = "fr"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            Button("Hindi"){
                language = "hi"
                layoutDirectionString = LEFT_TO_RIGHT
            }
        } label: {
            Image(systemName: "globe.asia.australia.fill")
                .foregroundStyle(.black)
        }

    }
}

//on long press work
/*
struct LanguageOptionsLongPressView: View {
    
    @Binding var language: String
    @Binding var layoutDirectionString : String
    
    
    var body: some View {
        Image(systemName: "globe.asia.australia.fill")
            .contextMenu{
                Button("English"){
                    language = "en"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Arabic"){
                    language = "ar"
                    layoutDirectionString = RIGHT_TO_LEFT
                }
                Button("French"){
                    language = "fr"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Hindi"){
                    language = "hi"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
            }
    }
}
*/

#Preview {
    LanguageOptionsTapView(
        language: .constant("en"),
        layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
