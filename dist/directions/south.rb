class South

  attr_accessor :keyword

  def initialize
    @keyword = "S"
  end

  def right
    West.new
  end

  def left
    East.new
  end
end