# input: none
# output: string
# requirements:
#   32 hexadecimal characters,
#   broken into 5 sections like this 8-4-4-4-12

# generate a random letter or number and
# loop until or do 34.times to fill the length requirements
# return slices of the randomized string to insert the '-' between sections

CHARACTER_LIBRARY = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9)

def generate_UUID
  id = ''
  32.times { id << CHARACTER_LIBRARY.sample }
 "#{id[0, 8]}-#{id[9, 4]}-#{id[10, 4]}-#{id[11, 4]}-#{id[12, 12]}"
end

p generate_UUID
p generate_UUID
