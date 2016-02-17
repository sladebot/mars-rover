#!/usr/bin/env ruby


require_relative './rover'
require_relative './plateu'
require_relative './directions/north'
require_relative './directions/south'
require_relative './directions/east'
require_relative './directions/west'

class Controller

  # == This will start reading inputs from a file for creating the plateu and then the rovers. Follow the subsequent
  # ==   instructions and in the end write the final state of the rovers into an output file.
  #
  ##

  def self.start
    input = File.new("input.txt", "r")
    output = File.open('output.txt', 'w+')
    rover_meta = []

    plateu = build_plateu(input.gets.chomp)
    while(line = input.gets)
      rover_meta.push(line.chomp) unless line.chomp.empty?
    end
    counter = 0
    while counter < rover_meta.count
      rover = build_rover(rover_meta[counter])
      rover.plateu = plateu unless plateu.nil?
      rover.follow_instructions(rover_meta[counter+1])
      output.write(rover.state + "\n")
      counter += 2
    end
  end

  private
  ## == This creates the plateu based on the input parameters
  #
  # params:
  # plateu_coordinates - contains the upper right corner coordinates of the plateu
  ##
  def self.build_plateu(plateu_coordinates)
    unless plateu_coordinates.empty?
      plateu_coordinates = plateu_coordinates.split(" ").map(&:to_i)
      Plateu.new(plateu_coordinates[0], plateu_coordinates[1])
    end
  end


  ## == This creates the rover based on the input parameters
  #
  # params:
  # rover_coordinates - Contains the x coordinate, y coordinate and the facing direction of the rover to start with.
  ##
  def self.build_rover(rover_coordinates)
    unless rover_coordinates.empty?
      rover_coordinates = rover_coordinates.split(" ")
      Rover.new(rover_coordinates[0].to_i, rover_coordinates[1].to_i, rover_coordinates[2].to_s)
    end
  end
end


Controller.start