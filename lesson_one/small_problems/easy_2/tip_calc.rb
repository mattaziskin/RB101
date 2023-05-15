puts "What was the bill total?"
total = gets.chomp.to_f
puts "What % would you like to tip (please enter a whole, non decimal number"
tip = gets.chomp.to_i 
tip = tip * 0.01
tip_amount = total * tip
tip_amount = format("%.2f",tip_amount)
new_total = total.to_f + tip_amount.to_f
new_total = format("%.2f",new_total)
puts "The tip is $#{tip_amount} and the total would be $#{new_total}"
