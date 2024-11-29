//
//  ContentView.swift
//  Tab View
//
//  Created by Prinon bhowmik on 11/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Men", systemImage: "manfigure.arms.open"){
                //Fragment View
                Text("Men")
            }
            Tab("Women", systemImage: "figure.stand.dress"){
                //Fragment View
                Text("Woman")
            }
            TabSection("Shoes"){
                Tab("Men", systemImage: "manfigure.arms.open"){
                    //Fragment View
                    Text("Men's Shoes")
                }
                Tab("Women", systemImage: "figure.stand.dress"){
                    //Fragment View
                    Text("Woman's Shoes")
                }
            }
        }.tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    ContentView()
}
