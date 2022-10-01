def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
original_buffer1 = [1,2,3]
original_buffer2 = [1,2,3]

rolling_buffer1(original_buffer1, 3, 4)

rolling_buffer2(original_buffer2, 3, 4)

p original_buffer1
p original_buffer2

# using << will mutate the caller updating the buffer while using "+" will not mutate the caller
