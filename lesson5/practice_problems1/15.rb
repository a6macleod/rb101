# input: array
# output: array
# requirements:
#   return array contains only the hashes where all integers are even

# use selectto return a new array
# take the value of each sub-hash's key/value pair
# use #all? to determine if they are all even

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

even_integers = arr.select do |hash|
  hash.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end

p even_integers
