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



  def self.most_popular
    popular = ""
    count = 0

    Recipe.all.each do |recipe|

      RecipeCard.all.each do |recipe_card|
        recipe == recipe_card.recipe
      end
    end
  end
end
