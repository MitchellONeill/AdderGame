class Player

  attr_reader :name, :lives, :dead, :player_id

  def initialize(name, id)
    @player_id = id
    @name = name
    @lives = 3
    @dead = false
  end

  def lose_a_life
    @lives -= 1
    @dead = @lives == 0
  end

end



