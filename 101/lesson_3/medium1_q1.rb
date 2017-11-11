# medium1_q1.rb

# Let's do some "ASCII Art" (a stone-age form of nerd artwork from
# back in the days before computers had video screens).

# For this practice problem, write a one-line program that creates
# the following output 10 times, with the subsequent line indented 1
# space to the right:

=begin
The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!
=end 

# Understanding:
# Output multiline string with lines staggered by one indent per line
# Could easily count spaces with a counter characte but must be one
# -line
# Can use string interpolation, %, format, or printf
# Use times method with index as number of spaces interpolated to str

10.times {|i| puts "#{' ' * i}The Flinstones Rock!"}
