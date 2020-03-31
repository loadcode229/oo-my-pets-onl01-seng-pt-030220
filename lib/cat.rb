require 'pry'
class Cat
  
  attr_accessor :mood, :owner
  attr_reader :name
  @@pets = []
  
  def initialize(name, owner, mood = "nervous")
    @name, @owner, @mood = name, owner, mood
    
  end
  def self.all
    @@pets
  end
end