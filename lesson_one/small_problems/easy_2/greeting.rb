puts "What is your name?"
name = gets.chomp!.downcase.capitalize
if name.include?("!")
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end 