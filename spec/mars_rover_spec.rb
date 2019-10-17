require "./mars_rover"

describe 'mars_rover' do 

    let(:mars_rover) { MarsRover.new(@x,@y,@direction) }

    it 'should turn left' do
        if @commands == "L"
            if mars_rover.direction == 'N'
                mars.rover.direction('W').should eq('The rover is facing North')
                expect(mars_rover).to eq(turn_left)
            elsif mars_rover.direction == 'W'
                mars.rover.direction('S').should eq('The rover is facing West')
                expect(mars_rover).to eq(turn_left)
            elsif mars_rover.direction == 'E'
                mars.rover.direction('N').should eq('The rover is facing East')
                expect(mars_rover).to eq(turn_left)
            else
                mars_rover.direction == 'S'
                mars.rover.direction('E').should eq('The rover is facing South')
                expect(mars_rover).to eq(turn_left)    
            end
        end

    end

    it "should turn right" do
            if @command == "R"
                if mars_rover.direction == 'S'
                    mars.rover.direction('W').should eq('The rover is facing West')
                    expect(mars_rover).to eq(turn_right)
                elsif mars_rover.direction == 'N'
                    mars.rover.direction('E').should eq('The rover is facing East')
                    expect(mars_rover).to eq(turn_right)
                elsif mars_rover.direction == 'W'
                    mars.rover.direction('N').should eq('The rover is facing North')
                    expect(mars_rover).to eq(turn_right)
                else
                    mars_rover.direction == 'E'
                    mars.rover.direction('S').should eq('The rover is facing South')
                    expect(mars_rover).to eq(turn_right)    
                end
            end
    end

    it "should move forward" do
            if @command == "M"
                if mars_rover.direction == 'N'
                    expect(mars_rover.direction).to eq('N')
                    expect(mars_rover.position).to eq(0,1)
                    expect(mars_rover).to eq(move_forward)
                elsif mars_rover.direction == 'S'
                    expect(mars_rover.direction).to eq('S')
                    expect(mars_rover.position).to eq(0,-1)
                    expect(mars_rover).to eq(move_forward)
                elsif mars_rover.direction == 'E'
                    expect(mars_rover.direction).to eq('E')
                    expect(mars_rover.position).to eq(1)
                    expect(mars_rover).to eq(move_forward)
                else 
                   mars_rover.direction == 'W'
                    expect(mars_rover.direction).to eq('W')
                    expect(mars_rover.position).to eq(position_x = -1)
                    expect(mars_rover).to eq(move_forward)
                end
            end
    end

    it "should turn left twice" do
        if @command == "LL"
            if mars_rover.direction == 'N'
                mars.rover.direction('W').should eq('The rover is facing North')
                expect(mars_rover).to eq(turn_left)
                expect(mars_rover).to eq(turn_left)
            elsif mars_rover.direction == 'W'
                mars.rover.direction('S').should eq('The rover is facing West')
                expect(mars_rover).to eq(turn_left)
                expect(mars_rover).to eq(turn_left)
            elsif mars_rover.direction == 'E'
                mars.rover.direction('N').should eq('The rover is facing East')
                expect(mars_rover).to eq(turn_left)
                expect(mars_rover).to eq(turn_left)
            else
                mars_rover.direction == 'S'
                mars.rover.direction('E').should eq('The rover is facing South')
                expect(mars_rover).to eq(turn_left)
                expect(mars_rover).to eq(turn_left)    
            end
        end
    end

    it "should turn left then right" do
        if @command == "LR"
                expect(mars_rover).to eq(turn_left)
                expect(mars_rover).to eq(turn_right)    
        end
    end

    it "should turn left then right" do
        if @command == "MM"
                expect(mars_rover).to eq(move_forward)
                expect(mars_rover).to eq(move_forward)    
        end
    end

    it "should turn left, turn right, move forward twice, turn right then turn left" do
        if @command == "LRMMRL"
                expect(mars_rover).to eq(turn_left)
                expect(mars_rover).to eq(turn_right)
                expect(mars_rover).to eq(move_forward)
                expect(mars_rover).to eq(move_forward)
                expect(mars_rover).to eq(turn_right)
                expect(mars_rover).to eq(turn_left)    
        end
    end
end