def reverse(num)
  num = num.to_s 
  num.reverse!
  num = num.to_i
  return num
end 

puts reverse(12345335)
puts reverse(3400)