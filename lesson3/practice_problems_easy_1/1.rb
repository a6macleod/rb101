numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# I would expect the following to pring
# 1
# 2
# 2
# 3

# numbers is not mutated by uniq because it didn't include the bang (!)
