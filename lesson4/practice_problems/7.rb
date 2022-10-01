[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# the blocks return value will either be true or false based on the last item in the block which is num.odd?
# true, false, true
# Array#any? will return true if ANY of the block return statements is true
# The return value is true after just the first iteration. So only 1 is printed
