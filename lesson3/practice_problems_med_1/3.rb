def factors(number)
  divisor = number
  factors = []
  # loop do
    # break if divisor <= 0
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(10)
p factors(0)
p factors(-5)

# bonus 1: What is the purpose of the "number % divisor == 0" ?
# This is checking to see if the number will divide into the divisor without remainder (if it is a product)

# bonus 2: this is the return statment so that the method actually returns the array of factors it has been collecting.
