# Dir.glob('directions/*', &method(:require))

module Compass
  module Directions
    N = "N"
    E = "E"
    W = "W"
    S = "S"
  end

  VALID_ROTATIONS = [
      "L",
      "R"
  ]

  def parse_direction(direction)
    case direction
    when "N"
      North.new
    when "S"
      South.new
    when "E"
      East.new
    when "W"
      West.new
    end
  end
end