[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# it actually returns [1,2,3]. Because 'hi' is a truthy value and the block returns true, each iteration of the original collection is added to the return collection.
