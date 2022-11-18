flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.find_index { |el| el[0] == "B" && el[1] == "e"}

p flintstones.index { |name| name[0,2] == 'Be' }
# p flintstones.index { |name| name[0,2] == 'Me' } # => nil
