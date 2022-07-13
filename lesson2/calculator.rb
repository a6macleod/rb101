require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

p MESSAGES.inspect

def prompt(message)
  puts "=> #{message}"
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def valid_number?(number)
  integer?(number) || float?(number)
end

def operation_to_message(operator)
  message = case operator
            when "1"
              "Adding"
            when "2"
              "Subtracting"
            when "3"
              "Multiplying"
            when "4"
              "Dividing"
            end
  message
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt(MESSAGES['greeting'] + ' ' + name)

loop do # main loop
  first_number = ''
  loop do
    prompt(MESSAGES['get_first'])
    first_number = gets.chomp
    if valid_number?(first_number)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  second_number = ''
  loop do
    prompt(MESSAGES['get_second'])
    second_number = gets.chomp
    if valid_number?(second_number)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  operator_prompt = <<-MSG
  What kind of operation would you like to use
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['invalid_operator'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result =  case operator
            when "1"
              first_number.to_i + second_number.to_i
            when "2"
              first_number.to_i - second_number.to_i
            when "3"
              first_number.to_i * second_number.to_i
            when "4"
              # convert the number to a float for division
              first_number.to_f / second_number.to_f
            end

  prompt("The result is #{result}")

  prompt(MESSAGES['calculate_again?'])
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt("Good bye")
