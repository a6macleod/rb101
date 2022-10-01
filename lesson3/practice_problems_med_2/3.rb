def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# my_string == "pumpkins"
# my_array == ["pumpkins", "rutabaga"]

# both the operators in tricky_method are adding a new string, but only the shovel operator (<<) is mutating the caller while #+= is reassigning a new local variable
