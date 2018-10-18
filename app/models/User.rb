class User
  attr_reader :name

  @@all = []

  def initialize (name)
      @name = name
      self.class.all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card (recipe, date, rating) #should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen (ingredient)#should accept an ingredient instance as an argument, and create a new allergen instance for this user and the given ingredient
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select {|allergen| allergen.user == self}
  end

  def recipes
    RecipeCard.all.select {|recipe_card| recipe_card.user == self}
  end

  def recipe_ratings
    self.recipes.map {|recipe| recipe.rating}
  end

  def top_three_recipes #should return the top three highest rated recipes for this user.
     self.recipes.sort {|a, b| b.rating <=> a.rating}[0, 3]
  end

  def most_recent_recipe
    self.recipes.sort {|a, b| b.date <=> a.date}[0]
  end

  #Identify all the recipes for the user
  #sort in a array
  # select top 3
end
