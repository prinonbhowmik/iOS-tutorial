

import SwiftUI

struct MainView: View {
    
    @State var showSettingsView: Bool = false
    @State var showPinyin: Bool = true
    
    @State var done: Bool = false
    
    var gameOver: Bool { gVM.gameModel.gameWon }
    
    @Environment(GameViewModel.self) var gVM
    var body: some View {
        ZStack {
            GearIconView(showSettingsView: $showSettingsView)
            VStack {
                
                ScoreView(score: gVM.gameModel.score, maxTurns: gVM.gameModel.maxTurns)
                
                Toggle(showPinyin ? "Hide Pinyin" : "Show Pinyin", isOn: $showPinyin.animation())
                    .padding(.vertical)
                
                if let chineseNum = gVM.gameModel.answer
                    .num99ToChinese() {
                
                    Spacer()
                    
                    Text(chineseNum.chinese)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text(chineseNum.pinyin)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .opacity( showPinyin ? 1 : 0)
                }
                
                NumberOptionsView(numbers: gVM.gameModel.alternatives, answers: gVM.gameModel.answer)
                    .onChange(of: gVM.gameModel.turns){ _,_ in
                        gVM.gameModel.generateNewProblem()
                        
                    }
                
            }
            .padding()
        }
        .fullScreenCover(isPresented: $done, content: {
            GameOverView(color: .green.opacity(0.7))
        })
        .fullScreenCover(isPresented: $showSettingsView, content: {
            SettingsView(showSettingsView: $showSettingsView, volume: gVM.gameModel.volume)
        })
       
        .onChange(of: gameOver){_,_ in
            done = gameOver
            
        }
    }
}


#Preview {
    MainView().environment(GameViewModel())
}
