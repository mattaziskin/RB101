flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Create an array containing only two elements: Barney's name and Barney's number.
new_a = []
flintstones.each do |k,v|
  if k == "Barney"
    new_a.push(k)
    new_a.push(v)
  end
end

p new_a

=begin
LS solution
flintstones.assoc("Barney")
#=> ["Barney", 2]
=end