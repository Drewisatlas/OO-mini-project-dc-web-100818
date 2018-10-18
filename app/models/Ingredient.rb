class Ingredient
  attr_reader :name

  @@all = []

  def initialize (name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def allergen?
    if Allergen.all.find {|allergen| allergen.ingredient == self}
      true
    else
      false
    end
  end

end
