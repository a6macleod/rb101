['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# The input array is inserted into the supplie hash argument with the first letter as the key and the array element as the value
# { 'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}
