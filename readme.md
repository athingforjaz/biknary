# Welcome to Biknary
Inspired by Aida Lovelace and the revolutionary knitting spies who hid secret messages in their handicrafts.

This Ruby-based knitting pattern generator accepts user input, converts to binary, and generates a knitting pattern based on this binary. Pattern can be used to knit a rectangular item, such as a scarf, or as an insert panel in a larger item.

![example knitting pattern](images/biknary_pattern.png "example knitting pattern")

To run:
- In command line, type "gem install ruby2d".
- Clone and type "ruby main.rb" from command line.

# To-Do
- Refine graphics & add shapes for each stitch
- Add yarn-over and decrease capabilities
- Add random cable generator
- Add triangles & other shapes for different types of knitting patterns, such as shawls
- Toggle between art mode and knitting mode
- Allow for customisable colors in art mode
- Add GUI interface to allow input from GUI
- Add row numbers
- Row numbers need to start at the bottom and go up
- Row coloring needs to start at bottom and go up
- refactor to take out repeated code
- Remove ruby2d graphics from classes.rb & create new graphics class
    - Consider alternate methods of rendering graphical version of knitting pattern

# Current Features
- Generates a rectangular knitting pattern based on user input
- Translates binary into knits and purls
- Displays a colored square for each stitch
- Make every 10 rows a different color
