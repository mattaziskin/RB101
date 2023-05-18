# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

#outputs { a: 'hi there'} because both greetings and informal point to same object, and the << mutated that object so both variable point to the changed object