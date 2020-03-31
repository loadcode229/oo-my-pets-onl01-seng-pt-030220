class Fish
  
  attr_accessor :owner, :mood
  attr_reader :name
  
  def initialize(name, owner, mood = "nervous")
    @name, @owner, @mood = name, owner, mood
  end
end