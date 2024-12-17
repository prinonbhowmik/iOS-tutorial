//
//  ContentView.swift
//  Recipe (Mvvm)
//
//  Created by Prinon bhowmik on 12/14/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var recipeViewModel: RecipeViewModel = RecipeViewModel()
    
    var body: some View {
        NavigationView {
            List(self.recipeViewModel.recipe){item in
                ListItemView(name: item.name, calories: item.caloriesPer100Grams, image: item.recipeImage)
                    .listRowSeparator(.hidden)
                    
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
