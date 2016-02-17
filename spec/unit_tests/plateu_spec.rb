require 'spec_helper'

describe Plateu do
  before :each do
    @plateu = Plateu.new(20, 10)
  end

  it "There should be a valid Plateu instance" do
    expect(@plateu).to be_an_instance_of Plateu
  end

  it "should know its length" do
    expect(@plateu.length).to eq(20)
  end

  it "should know its breadth" do
    expect(@plateu.breadth).to eq(10)
  end

end