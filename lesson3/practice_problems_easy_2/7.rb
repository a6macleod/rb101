flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino" << "Hoppy"
# OR flintstones.push("Dino").push("Hoppy")
flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item
p flintstones

