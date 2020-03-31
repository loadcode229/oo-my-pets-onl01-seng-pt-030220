require 'pry'
class Cat
  
  attr_accessor :mood, :owner
  attr_reader :name
  @@cats = []
  
  def initialize(name, owner, mood)
    @name, @owner = name, owner
    @mood = "nervous"
    @@cats << self
  end
  def self.all
    @@cats
  end
end