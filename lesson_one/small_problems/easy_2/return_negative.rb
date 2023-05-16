def negative(number)
  if number == 0
    return number
  elsif number < 0
    return number
  else 
    number = number * -1
    return number
  end 
end 
puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0   

=begin 

cleaner LS version

def negative(number)
  number > 0 ? -number : number
end

I would say the shortest method provided is not techinically better as it is far less understandable at a glance and saves very little space to write it that way
=end