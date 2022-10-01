limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

# the limit variable is not in the methods scope so it is throwing an undefined local variable error. To fix the code we need to pass in the variable as an argument when the method is called.
