# input: array [optional arguments]
# output: string
# requirements:
#   last two elements separated with an or [default]
#   add a comma if three or more elements, inlcuding last two [default]
#   first optional argument is the separator, override the comma
#   second optional argument overrides the 'or'

def joinor(array, separator = ', ', conjunction = 'or')
  return_array = array.dup
  return_array[-1] = conjunction + ' ' + return_array[-1].to_s
  if return_array.length > 2
    return return_array.join(separator)
  elsif return_array.length < 2
    return array.join
  else
    return return_array.join(' ')
  end
end

p joinor([1])
p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
