famous_words = "seven years ago..."

# show two different ways to put the expected "Four score and " in front of it.

puts famous_words.prepend("Four score and ") # method 1

famous_words = "seven years ago..."

puts famous_words

famous_words = "Four score and " + famous_words # method 2

puts famous_words

famous_words = "seven years ago..."

puts famous_words

puts "Four score and ".concat(famous_words) # method 3

puts famous_words

famous_words = "seven years ago..."

puts famous_words

famous_words = "Four score and " << famous_words # method 4

puts famous_words