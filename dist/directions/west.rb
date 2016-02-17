class West

  attr_accessor :keyword

  def initialize
    @keyword = "W"
  end

  def right
    North.new
  end

  def left
    South.new
  end
end