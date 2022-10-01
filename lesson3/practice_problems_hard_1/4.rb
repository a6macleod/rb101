def is_an_ip_number?(num)
  num.to_i > 0 && num.to_i < 255
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.length == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end

# issues
# You're not returning a false condition
# not handling the case that there are more or fewer than 4 components to the IP address (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."
p 'first'
p dot_separated_ip_address?("10.4.5.11")
p 'second'
p dot_separated_ip_address?("10.4.5.270") # false condition
