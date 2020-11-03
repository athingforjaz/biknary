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
# these are commented out, we can do this to show a lettered pattern in the terminal with these two lines
#final_pattern = final_pattern.join(' ')
#print final_pattern
set resizable: true, height: 1000, title: "Biknary 3000"
show