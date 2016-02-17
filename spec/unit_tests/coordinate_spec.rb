require 'spec_helper'

describe Coordinate do
  before :each do
    @coordinate = Coordinate.new(["10", "20", "N"])
  end

  it "There should be a valid Coordinate instance" do
    expect(@coordinate).to be_an_instance_of Coordinate
  end

  it "Should have one x coordinate" do
    expect(@coordinate.x_element).to eql(10)
  end

  it "Should have one y coordinate" do
    expect(@coordinate.y_element).to eql(20)
  end

  it "Should have a direction" do
    expect(@coordinate.direction).to eql("N")
  end

end