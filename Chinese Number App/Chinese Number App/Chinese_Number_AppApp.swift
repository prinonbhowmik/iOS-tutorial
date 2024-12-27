//
//  Chinese_Number_AppApp.swift
//  Chinese Number App
//
//  Created by Prinon bhowmik on 12/21/24.
//

import SwiftUI

@main
struct Chinese_Number_AppApp: App {
    @State private var gVM: GameViewModel = GameViewModel()
    var body: some Scene {
        WindowGroup {
            ContainerView()
                .environment(gVM)
        }
    }
}
