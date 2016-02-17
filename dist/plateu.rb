class Plateu

  attr_accessor :length, :breadth

  ## == Initializing the Plateu
  #
  # params:
  #
  # upper_right_x - X coordinate of the upper right corner of the plateu
  # upper_right_y - Y coordinate of the upper right corner of the plateu
  # facing_direction - The direction in which the rover is facing
  #
  # Assumption: Lower left corner of the plateu to be at (0, 0).

  def initialize(upper_right_x, upper_right_y)
    parse_dimensions(upper_right_x, upper_right_y)
  end

  private

  ## == sets the dimentions of the plateu
  #
  # params:
  # upper_right_x - X coordinate of the upper right corner of the plateu
  # upper_right_y - Y coordinate of the upper right corner of the plateu
  #

  def parse_dimensions(upper_right_x, upper_right_y)
    @length = upper_right_x
    @breadth = upper_right_y
  end


end