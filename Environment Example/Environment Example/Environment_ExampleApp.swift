//
//  Environment_ExampleApp.swift
//  Environment Example
//
//  Created by Prinon bhowmik on 12/3/24.
//

import SwiftUI

@main
struct Environment_ExampleApp: App {
    
    @State var personViewModel = PersonViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(personViewModel)
        }
    }
}
