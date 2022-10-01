statement = "The Flintstones Rock"

counter = Hash.new(0)
statement.chars.each do |char|
  counter[char] += 1 unless char == ' '
end
p counter
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }
