class East

  attr_accessor :keyword

  ## == Intitializes the East direction. Default keyword is E
  #

  def initialize
    @keyword = Compass::Directions::E
  end

  ## == Returns the direction which is to the right of the current direction
  #
  # returns South
  def right
    South.new
  end

  ## == Returns the direction which is to the left of the current direction
  #
  # returns North
  def left
    North.new
  end
end