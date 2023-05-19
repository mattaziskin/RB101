def multiply(num1, num2)
  num1 * num2
end

def square(n, power = 1)
  result = n
  power -= 1 if power > 1
  power.times {result = multiply(result, n)}
  result
end
p square(2,3)
p square(5,3) == 125
p square(-8,2) == 64
p square(2,4) == 16