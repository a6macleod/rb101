greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# greetings = { a: 'hi there' }
# the string 'hi' gets shared by the hash greetings and informal_greeting. Since << ' there' mutates the caller, the string object is modified inplace and both greeting and informal_greeting are updated.
