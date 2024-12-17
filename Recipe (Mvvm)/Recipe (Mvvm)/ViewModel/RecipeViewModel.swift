
import Foundation

class RecipeViewModel: ObservableObject {
    @Published var recipe: [RecipeModel] = []
    
    init(){
        recipe.append(
            RecipeModel(name: "Burger", caloriesPer100Grams: 180, recipe: "Chicken breast, lettuce, tomato, onion, mayo, pickles, salt, pepper", recipeImage: "burger", recipeURL: "")
        )
        recipe.append(
            RecipeModel(name: "Pizza", caloriesPer100Grams: 166, recipe: "Chicken breast, lettuce, tomato, onion, mayo, pickles, salt, pepper", recipeImage: "pizza", recipeURL: "")
        )
        recipe.append(
            RecipeModel(name: "BBQ Chciken", caloriesPer100Grams: 120 , recipe: "Chicken breast, lettuce, tomato, onion, mayo, pickles, salt, pepper", recipeImage: "bbq chicken", recipeURL: "")
        )
        
    }
}
