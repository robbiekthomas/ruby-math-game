class Player
  attr_reader :lives
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @lives = 3
  end
  
  def lose_life
    @lives -= 1
  end
  
  def out_of_lives?
    @lives == 0
  end
end