class West

  attr_accessor :keyword

  ## == Intitializes the East direction. Default keyword is W
  #

  def initialize
    @keyword = Compass::Directions::W
  end


  ## == Returns the direction which is to the right of the current direction
  #
  # returns North
  def right
    North.new
  end

  ## == Returns the direction which is to the left of the current direction
  #
  # returns South
  def left
    South.new
  end
end