# input: array
# output: new array, original unmodified array
# requirements:
#   don't modify the original array
#   use map
#   return a new array, identical to the original but with each integer += 1

original = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_array = original.map do |hash|
  hash.map { |key, value| [key, value += 1] }.to_h
end

p original
p new_array
