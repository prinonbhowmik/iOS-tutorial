//
//  DisplayView.swift
//  Navigation Example
//
//  Created by Prinon bhowmik on 11/24/24.
//

import SwiftUI

struct DisplayView: View {
    
    let name: String
    let age: String
    
    var body: some View {
        VStack {
            Text("Name: \(name)")
            Text("Age: \(age)")
        }
        
        
        
        
        
    }
}

#Preview {
    DisplayView(name: "", age: "")
}
