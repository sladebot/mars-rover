require 'spec_helper'

describe East do
  before :each do
    @east = East.new()
  end

  it "There should be a valid East instance" do
    expect(@east).to be_an_instance_of East
  end

  it "On turning right 90 degrees should return an South instance" do
    expect(@east.right).to be_an_instance_of South
  end

  it "On turning left 90 degrees should return an North instance" do
    expect(@east.left).to be_an_instance_of North
  end

  it "On turning right 90 degrees again should return an South instance" do
    expect(@east.right).to be_an_instance_of South
  end

  it "On turning left again 90 degrees should return an North instance" do
    expect(@east.left).to be_an_instance_of North
  end

end