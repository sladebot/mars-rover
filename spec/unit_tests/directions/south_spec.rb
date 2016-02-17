require 'spec_helper'

describe South do
  before :each do
    @south = South.new()
  end

  it "There should be a valid South instance" do
    expect(@south).to be_an_instance_of South
  end

  it "On turning right 90 degrees should return an West instance" do
    expect(@south.right).to be_an_instance_of West
  end

  it "On turning left 90 degrees should return an East instance" do
    expect(@south.left).to be_an_instance_of East
  end

  it "On turning right 90 degrees again should return an West instance" do
    expect(@south.right).to be_an_instance_of West
  end

  it "On turning left 90 degrees again should return an East instance" do
    expect(@south.left).to be_an_instance_of East
  end

end