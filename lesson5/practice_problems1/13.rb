# input: array
# output: array
# requirements:
#   return a new array
#   contains the same sub-arrays
#   sub-arrays are ordered/sorted by the "odd" numbers they contain

# using the sort_by method
# then use the select method to select odd #s

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

sorted_array = arr.sort_by do |sub_array|
  sub_array.select do |integer|
    integer.odd?
  end
end

p sorted_array

# [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]] should be returned
