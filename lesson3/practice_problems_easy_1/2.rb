# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# ! means opposite or mutating the caller,

# what is != and where should you use it?
  # something does not equal something else (boolean)
# put ! before something, like !user_name
  # Anything other than that object
# put ! after something, like words.uniq!
  # part of the methods name and indciates that the method mutates the caller
# put ? before something
  # part of a ternary operator a ? b : c
# put ? after something
  # part of a methods name not an operator and indicates that it returns a boolean i.e. 2.even? will return true
# put !! before something, like !!user_name
  # is used to turn any object into their boolean equivalent.
