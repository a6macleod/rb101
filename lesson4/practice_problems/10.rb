[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# map will return an array with the results of the block
# 1 is not > 1 so num (1) is returned
# 2 & 3 are greater than 1 so puts num for each and returns nil for each
# the return statment is [1, nil, nil]
