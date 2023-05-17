ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.assoc('Spot') ? "Sout is present" : "Spot not present"
puts ages.fetch("Spot", "Spot not present")
puts ages.has_key?("Spot")
puts ages.include?("Spot")

# LS says .key? and .member? also would work