answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# because the answer variable is not mutated only a local variable within the method is reassigned, the final print value will be 42 - 8 = 34
