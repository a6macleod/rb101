a = 2 # not an array
b = [5, 8]
arr = [a, b]
# [2, [5,8]]

arr[0] += 2 # updates arr but not a bc it is not an array
# [4, [5,8]]
arr[1][0] -= a # updates b because it is an array
# [4, [3,8]]

# a = 4
# b = [1,8]
p a
p b
p arr

# The value of a didn't change because we are not referencing a at any point. This code arr[0] += 2 was modifying the array, arr not a.

# The value of b did change because b is an array and we are modifying that array by assigning a new value at index 0 of that array.
