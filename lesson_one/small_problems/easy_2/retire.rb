def valid_num(num)
  num.to_i.to_s == num
end 

age = ''
retire_age = ''
loop do # age validation
  puts "What is your age?"
  age = gets.chomp
  if valid_num(age)
    break
  else
    puts "Error, enter a valid integer"
  end 
end 

loop do # target validation
  puts "What age would you like to retire at?"
  retire_age = gets.chomp
  if valid_num(retire_age) && retire_age.to_i > age.to_i 
    break
  elsif valid_num(retire_age) && retire_age.to_i < age.to_i 
    puts "Unfortunately you can't go back in time, choose an age older than you are now"
  else
    puts "Error, enter a valid integer"
  end 
end 

remaining_years = retire_age.to_i - age.to_i 

current_year = Time.new.year
retire_year = current_year + remaining_years

puts "It is currently #{current_year}, you will retire in #{retire_year}"
puts "You only have #{remaining_years} years of work to go!"
    