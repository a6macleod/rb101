# Need three pieces of information
# 1) Loan amount
# 2) Annual Percentage Rate (APR)
# 3) Loan duration

# Need to calculate the following
# 1) Monthly interest rate
# 2) Loan duration in months
# 3) Monthly Payment

# get the loan amount (i.e. $17000)
# get the APR (i.e. 5% )
# get the loan duration (years)
# validate inputs
# calculate the monthly payment
# display monthly payment, APR, loan duration, loan amount

# EXAMPLE
# principle = 10000
# yearly_interest = 3.5
# annual_loan_duration = 5
# monthly_payment = 181.92

def calculate_monthly_payment(principle, interest_rate, loan_duration)
  principle * (interest_rate / (1 - (1 + interest_rate)**(-loan_duration)))
end

def calculate_total_payment(payment, number_of_payments)
  payment * number_of_payments
end

def float?(number)
  number.to_f.positive? && number.to_f.to_s == number
end

def integer?(number)
  number.to_i.positive? && number.to_i.to_s == number
end

def valid_number?(number)
  integer?(number) || float?(number)
end

def invalid_input
  puts "\n=> Please enter a positive number only."
  puts "=> Do not include any symobols.\n"
end

puts "=> Car Loan Calculator!"
puts "=> Calculate your monthly payments"

loop do
  principle = nil
  loop do
    puts "\nPlease enter the loan amount:"
    principle = gets.chomp
    break if valid_number?(principle)
    invalid_input()
  end

  yearly_interest = nil
  loop do
    puts "\nPlease enter the annual percentage rate (APR):"
    yearly_interest = gets.chomp
    break if valid_number?(yearly_interest)
    invalid_input()
  end

  annual_loan_duration = nil
  loop do
    puts "\nPlease enter the length of the loan (in years):"
    annual_loan_duration = gets.chomp
    break if valid_number?(annual_loan_duration)
    invalid_input()
  end

  monthly_interest_rate = (yearly_interest.to_f / 12) / 100
  months = annual_loan_duration.to_f * 12

  monthly_payment =
    calculate_monthly_payment(principle.to_f, monthly_interest_rate, months)
    .round(2)

  total_payment =
    calculate_total_payment(monthly_payment, months)
    .round(2)

  puts "\n=> Monthly payment: $#{monthly_payment}"
  puts "=> Principle: $#{principle.to_f.round(2)}"
  puts "=> APR: #{yearly_interest}%"
  puts "=> Total repayment: $#{total_payment}"

  puts "\nCalculate another loan? (Y to calculate agin)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

puts "Good bye"
