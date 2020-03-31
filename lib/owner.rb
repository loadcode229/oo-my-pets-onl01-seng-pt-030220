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
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.each {|dog| dog.mood = "happy"}
    end
  end
  
  def feed_cats
    cats.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    cats.each do |cat| 
      cat.mood = "nervous"
      cat.owner = nil
    end
    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end
  
  def list_pets
    "I have #{dogs.count} dog(s), #{cats.count} cat(s)."
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