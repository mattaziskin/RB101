def sqmeter_to_sqfoot(num)
  value = num * 10.7639
  value
end

length = ''
width = ''

loop do 
puts "What is the length of the room in meters?"
length = gets.chomp
  if length.to_i.to_s == length
    break
  else
    "Error please enter a number"
  end
end 
loop do 
puts "What is the width of the room in meters?"
width = gets.chomp
  if width.to_i.to_s == width
    break
  else
    puts "Error please enter a number"
  end 
end

sqmeter_size = length.to_i * width.to_i
sqft_size = sqmeter_to_sqfoot(sqmeter_size)

puts "The area of the room is #{sqmeter_size} meters and #{sqft_size} feet"

# further Exploration

INCHES_IN_FEET = 12
CM_IN_INCHES = 2.54

puts "What is the length of the room in feet?"
length = gets.chomp.to_f 
puts "What is the width of the room in feet?"
width = gets.chomp.to_f

sqfeet = (length * width).round(2)
sqin = ((length * INCHES_IN_FEET) * (width * INCHES_IN_FEET)).round(2)
sqcm = (((length * INCHES_IN_FEET)/CM_IN_INCHES) * ((width * INCHES_IN_FEET)/CM_IN_INCHES)).round(2)

puts "The roome is #{sqfeet} sq feet, #{sqin} sq inches, and #{sqcm} sq centimeters"