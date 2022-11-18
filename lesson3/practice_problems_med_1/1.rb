string = "The Flintstones Rock!"
counter = 0

loop do
  puts (' ' * counter) + string
  counter += 1
  break if counter == 10
end

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!
