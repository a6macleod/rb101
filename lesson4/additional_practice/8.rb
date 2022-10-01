numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  p numbers.shift(1)
end
p numbers

# the output of this code would be 1 is printed 3 is printed, numbers is [3, 4]

numbers = [1, 2, 3, 4]
numbers.each do |number|
  # p number
  numbers.pop(1)
end
# p numbers

# print 1, print 2
