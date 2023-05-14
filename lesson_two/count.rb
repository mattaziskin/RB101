def number?(x)
  if x.to_i.kind_of?(Integer) || x.to_kind_of?(Float)
    puts x
  else
    puts "wrong"
  end 
end 

puts "enter num with decimal"

input = gets.chomp.to_f

number?(input)

