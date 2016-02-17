class North

  attr_accessor :keyword

  def initialize
    @keyword = "N"
  end
  def right
    East.new
  end

  def left
    West.new
  end

end