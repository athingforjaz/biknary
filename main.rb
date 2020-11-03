require './classes.rb'
require 'ruby2d'

puts "Enter a word or phrase to be knitted"
project_pattern = gets.chomp
puts "Enter a stitch width for your project"
pattern_width = gets.to_i

my_pattern = KnittingRandomizer.new
my_pattern.binary_time project_pattern
my_pattern.find_length pattern_width
final_pattern = my_pattern.pattern_maker pattern_width

final_pattern = final_pattern.join(' ')
print final_pattern
show