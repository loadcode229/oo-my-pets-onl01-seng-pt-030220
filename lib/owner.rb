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
    cat = Cat.new(cat)
    @pets[:cats] << cat
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