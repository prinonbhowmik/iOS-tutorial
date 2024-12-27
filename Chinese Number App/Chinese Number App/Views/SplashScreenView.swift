//
//  SplashScreenView.swift
//  Chinese Number App
//
//  Created by Prinon bhowmik on 12/26/24.
//

import SwiftUI

struct SplashScreenView: View {
    @Binding var isPresented: Bool
    
    @State private var opacity = 0.0
    @State private var textOpacity = 0.1
    @State private var scale = CGSize(width: 0.5, height: 0.5)
    @State private var moveUp = false
    @State private var angle = 45.0
    @State private var spacing = 5.0
    
    var vm = ProverbViewModel()
    
    var chinese: String {
        vm.proverbModel.proverb
    }
    var pinyin: String {
        vm.proverbModel.pinyin
    }
    var english: String {
        vm.proverbModel.translation
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                // Background
                Color
                    .black
                    .ignoresSafeArea()
                Image("china7")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .frame(width: geo.size.width, height: geo.size.height)
                    .opacity(opacity)
                
                // The text
                VStack {
                    VeryCoolTextView(spacing: spacing, text1: chinese, text2: pinyin, text3: english, scale: scale, angle: angle, opacity: opacity)
                    
                    if moveUp {
                        Spacer()
                    }
                }
                    .opacity(textOpacity)
                
                // Button
                VStack {
                    Spacer()
                    Button(action: {
                        withAnimation {
                            isPresented.toggle()
                        }
                    }, label: {
                        Image("tent.2.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 75)
                            .clipShape(Capsule())
                            .overlay(
                                Capsule()
                                    .stroke(Color.red, lineWidth: 1)
                            )
                    })
                }
                
            }
        }
        .onAppear {
            vm.getRandomQuote()
            
            withAnimation(.easeInOut(duration: 2.5)) {
                textOpacity = 0.8
                opacity = 0.8
                scale = CGSize(width: 1, height: 1)
                angle = 0
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                withAnimation(.easeInOut(duration: 2)) {
                    textOpacity = 1.0
                    moveUp = true
                    spacing = 30
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                withAnimation(.easeInOut(duration: 2)) {
                    isPresented = false
                }
            }
        }
    }
}

#Preview {
    SplashScreenView(isPresented: .constant(true))
}
