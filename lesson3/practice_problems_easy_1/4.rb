numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
p numbers
# this will delete the number 2 at index 1 of the array. The array is mutated.
numbers.delete(1)
p numbers
# this will delete the number one at index 0 of the array. The array is mutated.
