# A
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # "one" the method reassigns to a local variable and doesn't modify the caller
puts "two is: #{two}" # "two"
puts "three is: #{three}" # "three"
# ----------------------------
# B
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # "one" the method reassigns to a local variable and doesn't modify the caller
puts "two is: #{two}" # "two"
puts "three is: #{three}" # "three"
# ----------------------------
# C
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # "two" the gsub! method modifies the caller permanetly
puts "two is: #{two}" # "three"
puts "three is: #{three}" # "one"
