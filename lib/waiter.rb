class Waiter

@@all = []

attr_accessor :name, :years

def initialize(name, years)
  @name = name
  @years = years
  @@all << self
end

def self.all 
  @@all
end

def new_meal(name, total, tip=0)
  
end

def meals
  Meal.all.select do |meal|
    meal.waiter == self
  end
end

def best_tipper

end