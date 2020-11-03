require 'ruby2d' 

class KnittingRandomizer

def binary_time project_pattern
    @binary_pattern = project_pattern.unpack("B*")[0]
    @binary_pattern.reverse!
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
    square_size = 20
    #this takes @pattern_length from above and repeats our pattern until it is even (no odd length rows at the end)
    while count < @pattern_length    
        #step through each character in the binary string
        @binary_pattern.each_char do |pattern|
            #this is our row-maker, reset x when we get to the end of the row and increment y
            if count % pattern_width == 0
                x = 0
                y += square_size
                
                final_pattern << "\n"
            end
            ten_rows = 10*square_size
            if y % ten_rows == 0
                square_color = 'yellow'
            else
                square_color = 'white'
            end
            case pattern
            when "0"
                final_pattern << "K"
                Square.new(
                    size: square_size,
                    x: x,
                    y: y,
                    color: 'black'
                )  
                Square.new(
                    size: square_size-1,
                    x: x+1,
                    y: y+1,
                    color: square_color
                )
                x += square_size
            when "1"
                final_pattern << "P"
                Square.new(
                    size: square_size,
                    x: x,
                    y: y,
                    color: 'black'
                )
                Square.new(
                    size: square_size-1,
                    x: x+1,
                    y: y+1,
                    color: square_color
                )
                Circle.new(
                    x: x+(square_size/2), 
                    y: y+(square_size/2),
                    radius: 2,
                    sector: 4,
                    color: 'black',
                    z:2
                )  
                x += square_size
            end
        count += 1 
        end
    end
    return final_pattern
end
end