//
//  ContainerView.swift
//  Chinese Number App
//
//  Created by Prinon bhowmik on 12/26/24.
//

import SwiftUI

struct ContainerView: View {
    
    @State private var isSplashPresented = true
    
    var body: some View {
        if isSplashPresented {
            SplashScreenView(isPresented: $isSplashPresented)
                .disabled(!isSplashPresented)
        }else{
            MainView()
        }
    }
}

#Preview {
    ContainerView().environment(GameViewModel())
}
