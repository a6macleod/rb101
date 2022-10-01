flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.find_index { |el| el[0] == "B" && el[1] == "e"}
