# MarsRover_Assessment

Create a rover instance with the position x, y and direction(N, E, S, or W)
```ruby
mars_rover1 = MarsRover.new(0,0,'N')
mars_rover2 = MarsRover.new(0,0,'S')
mars_rover3 = MarsRover.new(0,0,'E')
```

Call the receive_commands method for each instance of the rover to execute passing a command
```ruby
mars_rover1.receive_commands(['L'])
mars_rover2.receive_commands(['LRMMRL'])
mars_rover3.receive_commands(['MM'])
```

To execute the code on the terminal run below script:
```ruby
ruby mars_rover.rb
```
The result will show you the current positon of a rover in the grid and the direction its facing.

Examples to execute the mars rover program:

1. Create a rover instance with the position x, y and direction(N, E, S, or W)
    ```ruby
        mars_rover1 = MarsRover.new(0,0,'N')
        mars_rover2 = MarsRover.new(0,0,'S')
    ```
    
2. Call the receive_commands method for each instance of the rover to execute passing a command
    ```ruby
        mars_rover1.receive_commands(['L'])
        mars_rover2.receive_commands(['LRMMRL'])
    ```
3. Run the script to execute the program
    ```ruby
        ruby mars_rover.rb
    ```
4. The result will be

    mars_rover1:
      The current positon of a rover should be: x= 0 y= 0 facing= W
      
   mars_rover2:
      The current positon of a rover should be: x= 0 y= -2 facing= S
