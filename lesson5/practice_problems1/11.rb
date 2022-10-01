# input: array
# output: array
# requirements:
#   use #select or #reject
#   return a new array
#   new array should be identical to the original excpet contain integers of multiples of 3

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

multiples = arr.map do |sub_array|
  sub_array.select do |integer|
    integer % 3 == 0
  end
end

p multiples
