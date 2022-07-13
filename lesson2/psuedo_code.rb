# a method that returns the sum of two integers
START
SET value1 by GET first number
SET value2 by GET second number

SET the result by adding value1 and value2
PRINT the result
END

# a method that takes an array of strings, and returns a string that is all those strings concatenated together
START
SET concatenated_strings to nil
WHILE index < length of array_of_strings
PUSH array_of_strings index to concatenated_strings
PRINT concatenated_strings
END

# a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element. For instance:
START
SET new_array to nil
WHILE index < length of given_array
  if index is odd
    push given_array_element to new_array
  else
    next
  end
PRINT new_array
end

# a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.
START
SET given_character
SET character_occurence to 0
SET returned_index to nil
WHILE index < length of given_string
  if current_string_character == given_character
    add 1 to the character_occurence
    if character_occurence == 3
      SET returned_index to index
      exit loop
    end
  end
PRINT returned_index
END

# a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes. For instance:
START
SET merged_array to []
WHILE index <  2x length of first_array && index < 2x length of second_array
  if index is odd
    move first element from second array to merged_array
  else
    move first element from first array to merged_array
  end
end
PRINT merged_array
END
