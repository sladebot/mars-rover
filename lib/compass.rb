# Dir.glob('directions/*', &method(:require))

module Compass
  VALID_DIRECTIONS = [
      "N",
      "S",
      "E",
      "W"
  ]

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