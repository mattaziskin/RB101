advice = "Few things in life are as important as house training your pet dinosaur."

shorten = advice.slice!("Few things in life are as important as ")

puts shorten
puts advice

# slice wouldn't modify the calling string and would leave it whole