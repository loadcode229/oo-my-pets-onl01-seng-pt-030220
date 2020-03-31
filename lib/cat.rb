require 'pry'
class Cat
  
  attr_accessor :mood, :owner
  attr_reader :name
  @@pets = []
  def initialize(name)
    @name, @owner, @mood = name, owner, mood
    @mood = "nervous"
  end
end