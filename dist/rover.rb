require_relative "../lib/compass"

begin
  require 'pry'
rescue LoadError
end

class Rover
  include Compass

  attr_accessor :x_coordinate, :y_coordinate, :facing_direction, :plateu

  ## == Initializing the Rover
  #
  # params:
  #
  # x_coordinate - The x coordinate at which the rover is
  # y_coordinate - The y coordinate at which the rover is
  # facing_direction - The direction in which the rover is facing
  #

  def initialize(x_coordinate, y_coordinate, facing_direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @facing_direction = parse_direction(facing_direction)
  end

  ## == This is responsible for the movement of the rover in a direction
  #
  # On getting this instruction the rover moves on grid point in its own facing direction.
  # Valid directions are North, South, East and West.

  def move
    case @facing_direction
      when North
        @y_coordinate += 1
      when South
        @y_coordinate -= 1
      when East
        @x_coordinate += 1
      when West
        @x_coordinate -= 1
      else
        raise Exception.new("Direction not recognised");
    end
    unless self.within_plateu.nil? || self.within_plateu
      raise Exception.new("Rover toppled over, it was out of the plateu");
    end
  end

  ## == This is responsible for the rotation of the rover in a direction
  #
  # Params:
  # direction - The direction in which it should rotate
  # Valid instructions are L and R.
  #
  #
  # On getting this instruction the rover rotates either left of right
  # without moving in any direction by 90 degrees.
  #

  def rotate(direction)
    begin
      case direction
        when 'L'
          @facing_direction = @facing_direction.left
        when 'R'
          @facing_direction = @facing_direction.right
        else
          raise Exception.new("Rotation instruction not recognised")
      end
    rescue => e
      puts e.backtrace
    end
  end

  ## == This is used for following a sequence of instructions for the rover.
  #
  # Params:
  # instructions - a sequence of instructions in a string without any spaces
  #
  # Valid instructions include only M for movement and [LR] for rotation.
  #
  # returns the final state after the series of instructions.

  def follow_instructions(instructions)
    instructions_array = instructions.split("")
    instructions_array.each do |instruction|
      if Compass::VALID_ROTATIONS.include?(instruction)
        self.rotate(instruction)
      elsif instruction == "M"
        self.move
      end
    end
    self.state
  end

  ## == Checks if a rover is within the plateu or not.
  #
  # Assumption - The lower left corner of the plateu is at (0,0).
  #
  def within_plateu
    unless self.plateu.nil?
      (self.x_coordinate.between?(0, self.plateu.length)) && (self.y_coordinate.between?(0, self.plateu.breadth))
    end
  end

  ## == Returns the current state of the rover
  #
  # Shows the current x coordinate, y coordinate and the facing direction of the rover at that point of time
  # as a string.
  #
  # example:
  # @rover.state
  # => "0 5 N"

  def state
    "#{self.x_coordinate} #{self.y_coordinate} #{self.facing_direction.keyword}"
  end

end