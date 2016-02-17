class Coordinate

  attr_accessor :x_element, :y_element, :direction

  #== Initializes a coordinate object with an x_element, y_element and direction
  # This is mainly used while reading the coordinates for creating plateu and rovers
  #
  # Params:
  # coordinate_meta - An array with coordinate details
  #

  def initialize(coordinate_meta)
    if coordinate_meta.count >= 2
      @x_element = coordinate_meta[0].to_i
      @y_element = coordinate_meta[1].to_i
      @direction = coordinate_meta[2]
    else
      raise Exception("Invalid coordinates");
    end
  end
end