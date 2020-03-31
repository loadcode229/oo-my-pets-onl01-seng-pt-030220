class Dog
  
  attr_accessor :mood, :owner
  attr_reader :name
  
  def initialize(name, owner, mood = 'nervous')
    @name, @owner, @mood = name, owner, mood
  end
  
end