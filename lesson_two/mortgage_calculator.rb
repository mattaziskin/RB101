def valid_number(num)
  num.to_i.to_s == num
end
def valid_rate(apr)
  apr.to_f.to_s == apr
end

def monthly_payment(loan_amount, monthly_rate, month_duration)
  monthly_payment = loan_amount * (monthly_rate / (1 - (1 + monthly_rate)**(-month_duration)))
  monthly_payment
end

loan_amount = ''
apr = ''
duration = ''
loop do # loan number validation
  puts "What is your loan amount (numbers only)?"
  loan_amount = gets.chomp
  if valid_number(loan_amount)
    loan_amount.to_i
    break
  else
    puts "Error, only enter integer numbers please"
  end 
end 
  
loop do # apr validation
  puts "What is your APR (enter as a decimal)"
  apr = gets.chomp
  if valid_rate(apr)
    apr.to_f
    break
  else
    puts "Error, enter rate as a decimal please"
  end
end

loop do # duration validation
  puts "How many years is your loan term? (Number only)"
  duration = gets.chomp
  if valid_number(duration)
    break
  else
    puts "Please enter a whole integer"
  end 
end

monthly_rate = apr.to_f / 12
monthly_duration = duration.to_i * 12


puts "Your monthly payment is #{monthly_payment(loan_amount.to_i, monthly_rate, monthly_duration)}"
  