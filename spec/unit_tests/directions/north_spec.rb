require 'spec_helper'

describe North do
  before :each do
    @north = North.new()
  end

  it "There should be a valid North instance" do
    expect(@north).to be_an_instance_of North
  end

  it "On turning right 90 degrees should return an East instance" do
    expect(@north.right).to be_an_instance_of East
  end

  it "On turning left 90 degrees should return an West instance" do
    expect(@north.left).to be_an_instance_of West
  end

  it "On turning right 90 degrees again should return an East instance" do
    expect(@north.right).to be_an_instance_of East
  end

  it "On turning left again 90 degrees should return an West instance" do
    expect(@north.left).to be_an_instance_of West
  end

end