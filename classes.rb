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
    while count < @pattern_length       
        @binary_pattern.each_char do |pattern|
            if count % pattern_width == 0
                final_pattern << "\n"
            end
            case pattern
            when "0"
                final_pattern << "K"
            when "1"
                final_pattern << "P"
            end
        count += 1 
        end
    end
    return final_pattern
end
end