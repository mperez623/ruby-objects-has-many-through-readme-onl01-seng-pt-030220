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
  Customer.new_meal
end

def meals
  Meal.all.select do |meal|
    meal.waiter == self
  end
end


end