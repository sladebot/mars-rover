class South

  attr_accessor :keyword

  ## == Intitializes the East direction. Default keyword is S
  #

  def initialize
    @keyword = Compass::Directions::S
  end


  ## == Returns the direction which is to the right of the current direction
  #
  # returns West
  def right
    West.new
  end

  ## == Returns the direction which is to the left of the current direction
  #
  # returns East
  def left
    East.new
  end
end