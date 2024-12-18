
import Foundation
import Observation

@Observable class RecipeViewModel: ObservableObject {
    var recipe: [RecipeModel] = []
    
    init(){
        recipe.append(
            RecipeModel(name: "Burger", caloriesPer100Grams: 180, recipe: "Chicken breast, lettuce, tomato, onion, mayo, pickles, salt, pepper", recipeImage: "burger", recipeURL: "https://www.allrecipes.com/recipe/25473/the-perfect-basic-burger/")
        )
        recipe.append(
            RecipeModel(name: "Pizza", caloriesPer100Grams: 166, recipe: "Chicken breast, lettuce, tomato, onion, mayo, pickles, salt, pepper", recipeImage: "pizza", recipeURL: "https://sallysbakingaddiction.com/homemade-pizza-crust-recipe/")
        )
        recipe.append(
            RecipeModel(name: "BBQ Chciken", caloriesPer100Grams: 120 , recipe: "Chicken breast, lettuce, tomato, onion, mayo, pickles, salt, pepper", recipeImage: "bbq chicken", recipeURL: "https://www.allrecipes.com/recipe/236901/southern-bbq-chicken/")
        )
        
    }
}
