a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# I predict that a & c will have the same id#. Since b is getting assigned its own string it will likely be unique.
