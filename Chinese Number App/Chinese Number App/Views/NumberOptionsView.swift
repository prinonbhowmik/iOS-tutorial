//
//  NumberOptionsView.swift
//  Chinese Number App
//
//  Created by Prinon bhowmik on 12/25/24.
//

import SwiftUI

struct NumberOptionsView: View {
    let numbers: [Int]
    let answers: Int
    var body: some View {
        VStack {
            HStack {
                CircleView(value: numbers[0], answers: answers, color: .blue)
                CircleView(value: numbers[1], answers: answers, color: .green)
            }
            
            HStack {
                CircleView(value: numbers[2], answers: answers, color: .red)
                CircleView(value: numbers[3], answers: answers, color: .purple)
            }
        }
    }
}

struct CircleView: View {
    let value: Int
    let answers: Int
    let color: Color
    
    @Environment(GameViewModel.self) var gVM
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(color.gradient)
            Text("\(value)")
                .foregroundStyle(.white)
                .font(.title)
                .onTapGesture {
                    if answers == value {
                        self.gVM.gameModel.increaseScore()
                        self.gVM.playNumber(num: answers)
                    }else{
                        self.gVM.incorrectSound()
                    }
                    self.gVM.gameModel.nextTurn()
                }
        }
    }
}

#Preview {
    NumberOptionsView(numbers: [42,13,10,28], answers: 10)
        .environment(GameViewModel())
        .padding()
}
