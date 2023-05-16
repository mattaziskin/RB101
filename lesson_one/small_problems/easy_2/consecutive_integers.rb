num = ''
loop do
  puts "Please enter an integer greater than zero"
  num = gets.chomp.to_i
  if num > 0
    break
  else
    puts "Error: Please enter an integer greater than zero"
  end 
end 
operator_choice = ''
loop do
  puts "Please enter 's' to compute sum or 'm' to compute product"
  operator_choice = gets.chomp.downcase
  if operator_choice == 's' || operator_choice == 'm'
    break
  else
    puts "Error: Please enter either 's' or 'm' without quotations"
  end 
end 
product = 1
sum = 0
case operator_choice
  when 'm'
    (1..num).each do |x|
      product = product * x
    end 
    puts "The product of integers between 1 and #{num} is #{product}"
  when 's'
    (1..num).each do |x|
      sum = sum + x 
    end 
        puts "The sum of integers between 1 and #{num} is #{sum}"

end


      