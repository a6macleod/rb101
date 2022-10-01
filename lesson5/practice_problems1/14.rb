# input: hash
# output: array
# requirements:
#   output should be colors of the fruits
#   output should be size of the vegetables
#   sizes should be uppercase
#   colors should be capitalized

# create an empty array
# iterate the hash
# if it is a fruit, push colors.capitalize to the array as a sub array
# if it is a vegetable push the  size.upcase to the array

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

items = hsh.each_with_object([]) do |(key, value), array|
  if value[:type] == 'fruit'
    capitalized_colors = value[:colors].map do |color|
      color.capitalize
    end
    array << capitalized_colors
  else
    array << value[:size].upcase
  end
end

p items
