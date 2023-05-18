# puts "the value of 40 + 2 is " + (40 + 2)

# Why is this an error and what are two possible ways to fix this?
=begin
The second set of numbers is an integer and can't concatanate with a string
the second set of math is outside quotes and will never print
string interpolation can fix this
=end
puts "the value of 40 + 2 is " + "#{(40 + 2)}"

# can also change the math to a string to allow concatanation

puts "the value of 40 + 2 is " + (40+2).to_s