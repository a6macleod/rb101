a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id
puts a.to_s.object_id # turning a into a string to see if memory location changes
puts b.object_id
puts c.object_id

# I want to say that this will be the same as 1.rb where a & c have the same memory. However, since this is integers which are immutable they probably all have the same memory location.
# I was correct ha!
