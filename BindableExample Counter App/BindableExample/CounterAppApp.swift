//
//  BindableExampleApp.swift
//  BindableExample
//
//  Created by Prinon bhowmik on 12/3/24.
//

import SwiftUI

@main
struct CounterAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(vm : CounterViewModel())
        }
    }
}
