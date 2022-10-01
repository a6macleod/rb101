hash = { a: 'ant', b: 'bear' }
hash.shift

# removes the first key-value pair from the hash mutating it and returns the key-value pair as an array
# the return value is [:a, 'ant']
# hash == {b: 'bear'}
