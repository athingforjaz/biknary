require 'ruby2d' 

class KnittingRandomizer

def binary_time project_pattern
    @binary_pattern = project_pattern.unpack("B*")[0]
end

def find_length pattern_width
    i = 1
    while @binary_pattern.length * i % pattern_width != 0 
        i += 1
    end
    @pattern_length = @binary_pattern.length * i
end

def pattern_maker pattern_width
    count = 0
    final_pattern = []
    x = 0
    y = 0 
    
    while count < @pattern_length    
        @binary_pattern.each_char do |pattern|
            if count % pattern_width == 0
                x = 0
                y += 10
                final_pattern << "\n"
            end
            case pattern
            when "0"
                final_pattern << "K"
                Square.new(
                    size: 10,
                    x: x,
                    y: y,
                    color: 'black'
                )  
                Square.new(
                    size: 9,
                    x: x+1,
                    y: y+1,
                    color: 'white'
                )
                x += 10
            when "1"
                final_pattern << "P"
                Square.new(
                    size: 10,
                    x: x,
                    y: y,
                    color: 'black'
                )
                Square.new(
                    size: 9,
                    x: x+1,
                    y: y+1,
                    color: 'white'
                )
                Circle.new(
                    x: x+5, 
                    y: y+5,
                    radius: 2,
                    sector: 4,
                    color: 'black',
                    z:2
                )  
                x += 10
            end
        count += 1 
        end
    end
    return final_pattern
end
end