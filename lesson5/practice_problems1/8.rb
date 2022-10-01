# input: hash
# output: string
# requirements:
#   use the #each method
#   output all the vowels from the strings

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

VOWELS = ['a', 'e', 'i', 'o', 'u']

hsh.each do |_, value|
  value.each do |word|
    word.chars.each do |char|
      puts char if VOWELS.include?(char)
    end
  end
end
