require 'spec_helper'


describe Rover do
  before :each do
    @rover = Rover.new(0, 5, "N")
    @rover_dash = Rover.new(0, 5, "S")
  end

  it "There should be a valid Rover instance" do
    expect(@rover).to be_an_instance_of Rover
  end

  it "Should know its x coordinate" do
    expect(@rover.x_coordinate).to eq(0)
  end

  it "Should know its y coordinate" do
    expect(@rover.y_coordinate).to eq(5)
  end

  it "Should know its facing direction" do
    expect(@rover.facing_direction).to be_an_instance_of North
  end

  it "Should move one grid in its current facing direction and corresponding coordinate should change by 1" do
    @rover.move
    expect(@rover.y_coordinate).to eq(6)
  end

  it "Should rotate 90 degrees to the right on instruction - 'R'" do
    @rover.rotate('R')
    expect(@rover.facing_direction).to be_an_instance_of East
  end

  it "Should rotate 90 degrees to the left on instruction - 'L'" do
    @rover.rotate('L')
    expect(@rover.facing_direction).to be_an_instance_of West
  end

  it "Should rotate 90 degrees to the left on instruction - 'L'" do
    @rover_dash.rotate('L')
    expect(@rover_dash.facing_direction).to be_an_instance_of East
  end

  it "Should rotate 90 degrees to the left on instruction - 'R'" do
    @rover_dash.rotate('R')
    expect(@rover_dash.facing_direction).to be_an_instance_of West
  end

  it "Should return the current state of the rover" do
    expect(@rover.state).to eq("0 5 N")
  end

  it "Should follow a sequence of instructions and return the final state" do
    @rover.follow_instructions("LRMLLM")
    expect(@rover.state).to eq("0 5 S")
  end

  it "Should know about on which plateu it is on" do
    @plateu = Plateu.new(20, 10)
    @rover.plateu = @plateu
    expect(@rover.plateu).to be_an_instance_of Plateu
  end

  it "Should not allow an instruction if it moves out of the plateu" do
    @plateu = Plateu.new(20, 10)
    @rover.plateu = @plateu
    @rover.rotate("R")
    20.times do
      @rover.move
    end
    expect {@rover.move }.to raise_exception(Exception);
  end


end