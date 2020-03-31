require 'pry'
class Cat
  
  attr_accessor :mood, :owner
  attr_reader :name
  @@pets = []
  def initialize(name, mood = "nervous")
    @name, @owner, @mood = name, owner, mood
  end
end