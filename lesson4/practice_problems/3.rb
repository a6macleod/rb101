[1, 2, 3].reject do |num|
  puts num
end

# returns all elements for which the block returns false. Becuase puts is the block and returns nil which is falsy, the return will be all the inputs or [1, 2, 3]
