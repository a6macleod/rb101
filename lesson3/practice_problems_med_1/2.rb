# puts "the value of 40 + 2 is " + (40 + 2)

# this will give you an error because it is trying to add two strings togther not a string and a number.

# Two ways to fix this would be to use interpolation and do the math directly in the string.
puts "the value of 40 + 2 is #{40 + 2}"
# or to make the math result a string after it is calculated
puts "the value of 40 + 2 is " + (40 + 2).to_s
