class Recipe
  attr_reader :name

  @@all = []

  def initialize (name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def card_count
    RecipeCard.all.count {|recipe_card| self == recipe_card.recipe}
  end

  def cards
    RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}
  end

  def self.most_popular
    Recipe.all.max_by {|recipe| recipe.card_count}
  end

  def users
     cards = self.cards
     cards.map { |card| card.user }
  end

  def add_ingredients(ingredients)
    ingredients.each do |ing|
      RecipeIngredient.new(self,ing)
    end
  end

  def recipe_ingredients
    RecipeIngredient.all.select {|ing| ing.recipe == self}
  end

  def ingredients
    self.recipe_ingredients.map {|ri| ri.ingredient}
  end

  def allergens
    self.ingredients.select {|ing| ing.allergen? }
  end

end
