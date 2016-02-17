require 'spec_helper'

describe West do
  before :each do
    @west = West.new()
  end

  it "There should be a valid West instance" do
    expect(@west).to be_an_instance_of West
  end

  it "On turning right 90 degrees should return an North instance" do
    expect(@west.right).to be_an_instance_of North
  end

  it "On turning left 90 degrees should return an South instance" do
    expect(@west.left).to be_an_instance_of South
  end

  it "On turning right 90 degrees again should return an North instance" do
    expect(@west.right).to be_an_instance_of North
  end

  it "On turning left again 90 degrees should return an South instance" do
    expect(@west.left).to be_an_instance_of South
  end

end