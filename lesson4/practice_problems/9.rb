{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# the return value will be [nil, 'bear']
# because 'ant' returns false for the if statement, the first iteration is returned as nil
# 'bear' > 3 so the value 'bear' is returned for the second iteration
# map will always return something for each iteration to a new array
