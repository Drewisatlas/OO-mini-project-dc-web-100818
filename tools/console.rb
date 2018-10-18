require_relative '../config/environment.rb'

user1 = User.new("Nick")
user2 = User.new("Bob")
user3 = User.new("Dave")

ing1 = Ingredient.new("Flour")
ing2 = Ingredient.new("Milk")
ing3 = Ingredient.new("Eggs")


rec1 = Recipe.new("Pizza")
rec2 = Recipe.new("Scrambled eggs")
rec3 = Recipe.new("Cookies")

user1.add_recipe_card(rec1, "10-16-2018", 4)
user2.add_recipe_card(rec2, "10-31-2017", 10)
user3.add_recipe_card(rec3, "10-20-2018", 2)
user1.add_recipe_card(rec2, "10-02-2018", 7)

user1.declare_allergen(ing1)
user2.declare_allergen(ing2)
user1.declare_allergen(ing2)
user1.declare_allergen(ing3)


binding.pry
