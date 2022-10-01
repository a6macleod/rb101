# input: hash
# output: hash
# requirements:
#   DON'T use #to_h
#   key is the first item in each sub array and the value is the second item.


arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

hash = arr.each_with_object({}) do |sub_array, hsh|
  hsh[sub_array[0]] = sub_array[1]
end
p hash
