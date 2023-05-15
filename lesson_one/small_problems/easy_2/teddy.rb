def message(name)
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end
puts "What name would you like to use?"
name = gets.chomp
name = "Teddy" if name.empty?

message(name)