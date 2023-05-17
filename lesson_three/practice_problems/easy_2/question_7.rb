flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"

# We could have used either Array#concat or Array#push to add Dino to the family.
# How can we add multiple items to our array? (Dino and Hoppy)

flintstones.insert(-1, "Dino", "Hoppy")
p flintstones

# flintstones.push("Dino").push("Hoppy") push returns the array so we can chain
# flintstones.concat(%w(Dino Hoppy))  concat adds an array rather than one item

# oddly, my solution seems cleaner but perhaps it's worse in some way