class North

  attr_accessor :keyword

  ## == Intitializes the East direction. Default keyword is N
  #

  def initialize
    @keyword = Compass::Directions::N
  end

  ## == Returns the direction which is to the right of the current direction
  #
  # returns East
  def right
    East.new
  end

  ## == Returns the direction which is to the left of the current direction
  #
  # returns West
  def left
    West.new
  end

end