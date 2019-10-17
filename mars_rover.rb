#!/usr/bin/env ruby
class MarsRover

  def initialize(x, y, direction)
    @position_x = x
    @position_y = y
    @direction = direction
  end

  def receive_commands(commands)
    commands.each do |command|
      
        if command == 'L'
            turn_left
        elsif command == 'R'
          turn_right
        elsif command == 'LL'
          turn_left
          turn_left
        elsif command == 'LR'
          turn_left
          turn_right
        elsif command == 'MM'
          move_forward
          move_forward
        elsif command == 'LRMMRL'
          turn_left
          turn_right
          move_forward
          move_forward
          turn_right
          turn_left
        else
          command == 'M'
            move_forward
        end
    end
        puts "The current positon of a rover should be: x= #{@position_x} y= #{@position_y} facing= #{@direction}"
  end


  def turn_right
    if @direction == 'S'
       "The rover is facing West."
      @direction = 'W'
    elsif @direction == 'N'
       "The rover is facing East"
      @direction = 'E'
    elsif @direction == 'W'
       "The rover is facing North"
      @direction = 'N'
    else
      "The rover is facing South"
      @direction = 'S'
    end
  end

  def turn_left
    if @direction == 'N'
        "The rover is facing North"
      @direction = 'W'
    elsif @direction == 'W'
        "The rover is facing West"
      @direction = 'S'
    elsif @direction == 'E'
        "The rover is facing East"
      @direction = 'N'
    else
         "The rover is facing South"
      @direction = 'E'
    end
  end

  def move_forward
    if @direction == "N"
         @position_x = 0
         @position_y += 1
    elsif @direction == "S"
        @position_x = 0
        @position_y -= 1
    elsif @direction == "E"
        @position_x += 1
    else
        @direction == "W"
      @position_x -= 1
    end
  end
end

#Create rover instance with the position x, y, direction(N, E, S, or W)
mars_rover1 = MarsRover.new(0,0,'N')
mars_rover2 = MarsRover.new(0,0,'S')
mars_rover3 = MarsRover.new(0,0,'E')

#call the receive_commands method for each instance of the rover
mars_rover1.receive_commands(['L'])
mars_rover2.receive_commands(['LRMMRL'])
mars_rover3.receive_commands(['MM'])