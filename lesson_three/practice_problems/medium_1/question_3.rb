def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

puts "factors #{factors(12)}"

def factors2(number)
  divisor = number
  factors = []
  while divisor > 0
  factors << number / divisor if number % divisor == 0
  divisor -= 1
end
  factors
end

p factors2(12)

# Bonus 1 ) to check if a number has no remainder
# Bonus 2 ) to ensure the return of factors array