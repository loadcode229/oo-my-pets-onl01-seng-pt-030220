class Owner
  
  attr_accessor :pets
  attr_reader :name, :species, :fish, :dog, :cat
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@pets = {:fish => [], :dogs => [], :cats => []}
    @@all << self
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end
  
  
  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end
  
  def buy_dog(dog)
    @@pets[:dogs] << Dog.new(dog)
  end
  
  def walk_dogs
    @pets[:dogs].each do |walked|
      walked.mood = "happy"
    end
  end
  
  def feed_cats
    @@pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    
  end
  
  def list_pets
    "I have #{@@pets[:fishes].length} fish, #{@@pets[:cats].length} cat(s), #{@@pets[:dogs].length} dog(s)."
  end
  
  #class methods
  
  
  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.size
  end
end