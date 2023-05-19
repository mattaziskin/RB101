def prompt(string)
  puts "=> #{string}"
end

prompt("Please write a single world or multiple words")
input_string = gets.chomp
array_words = input_string.split(" ")

total_chars = 0

array_words.each do |word|
  total_chars = total_chars + word.length
end

prompt("There are #{total_chars} characters in \"#{input_string}\"")