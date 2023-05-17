advice = "Few things in life are as important as house training your pet dinosaur."

# See if the name "Dino" appears in the string below:

puts advice.split.include?("Dino") ? "Dino is in the string" : "Dino not there"
puts advice.match?("Dino")