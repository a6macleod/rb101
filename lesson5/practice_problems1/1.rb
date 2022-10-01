# How would you order this array of number strings by descending numeric value?

# input: array of strings
# output: array of strings
# requirements:
#   sort the array in decending order
#   the returned array contains strings

# sort, which will iterate the array but not change it
# to change the String#to_i
# use the block and inputs a & b with the <=> to order each element

arr = ['10', '11', '9', '7', '8']

p arr
p arr.sort { |a, b| b.to_i <=> a.to_i }
