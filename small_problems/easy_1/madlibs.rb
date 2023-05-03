puts "Enter a noun"
noun = gets.chomp.downcase
puts "Enter a verb"
verb = gets.chomp.downcase
puts "Enter an adjective"
adj = gets.chomp.downcase
puts "Enter an adverb"
adverb = gets.chomp.downcase

opt_1 = "Does your #{adj} #{noun} #{verb} #{adverb}? That's gross!"
opt_2 = "How #{adverb} can your #{adj} #{noun} #{verb}?"
opt_3 = "Oh my goodness!  Lookout!  A #{adj} #{noun} is going to #{adverb} #{verb}!"

puts [opt_1, opt_2, opt_3].sample