class East

  attr_accessor :keyword

  def initialize
    @keyword = "E"
  end

  def right
    South.new
  end

  def left
    North.new
  end
end