require_relative '../config/environment.rb'

user1 = User.new("Nick")
user2 = User.new("Bob")
user3 = User.new("Dave")

ing1 = Ingredient.new("Flour")
ing2 = Ingredient.new("Milk")
ing3 = Ingredient.new("Eggs")
ing4 = Ingredient.new("water")


rec1 = Recipe.new("Pizza")
rec2 = Recipe.new("Scrambled eggs")
rec3 = Recipe.new("Cookies")
rec4 = Recipe.new("Ice")
rec5 = Recipe.new("corn dogs")
rec6 = Recipe.new("cake")
rec7 = Recipe.new("ice cubes")

rec_ing1 = RecipeIngredient.new(rec1, ing1)
rec_ing2 = RecipeIngredient.new(rec2, ing3)
rec_ing3 = RecipeIngredient.new(rec3, ing1)
rec_ing4 = RecipeIngredient.new(rec1, ing2)
rec_ing5 = RecipeIngredient.new(rec1, ing4)
rec_ing6 = RecipeIngredient.new(rec3, ing2)
rec_ing7 = RecipeIngredient.new(rec7, ing4)

user1.add_recipe_card(rec1, "10-15-2018", 4)
user2.add_recipe_card(rec2, "05-31-2017", 10)
user3.add_recipe_card(rec3, "10-20-2017", 2)
user1.add_recipe_card(rec2, "01-02-2018", 7)
user1.add_recipe_card(rec3, "10-04-2018", 2)
user1.add_recipe_card(rec4, "10-12-2018", 10)
user1.add_recipe_card(rec5, "09-01-2018", 1)

user1.declare_allergen(ing1)
user2.declare_allergen(ing2)
user1.declare_allergen(ing2)
user1.declare_allergen(ing3)



binding.pry
