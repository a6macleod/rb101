# input: array
# output: array
# requirements:
#   array returns in the same order
#   sub-arrays are ordered (alphabetically or numerically)
#   sub-arrays are in descending order
#   each sub-array contains the same data type within that sub-array
#   sub-arrays can be integers or strings

# iterate the array using map to return a transformed array
# handle each sub-array by sorting in descending order

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

sorted = arr.map do |sub_array|
  sub_array.sort { |a, b| b <=> a }
end
p sorted
