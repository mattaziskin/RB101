def prompt(string)
  puts "=> #{string}"
end
first_five = []

prompt("Enter the 1st number")
first_five.push(gets.chomp.to_i)

prompt("Enter the 2nd number")
first_five.push(gets.chomp.to_i)

prompt("Enter the 3rd number")
first_five.push(gets.chomp.to_i)

prompt("Enter the 4th number")
first_five.push(gets.chomp.to_i)

prompt("Enter the 5th number")
first_five.push(gets.chomp.to_i)

prompt("Enter the last number")
check_number = gets.chomp.to_i

if first_five.include?(check_number)
  puts "The number #{check_number} appears in #{first_five}"
else
  puts "The number #{check_number} does not appear in #{first_five}"
end
