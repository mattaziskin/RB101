def center_of(str)
    length = str.length
    if length == 1
        output = str
    elsif length.even?
        middle = length / 2 
        output = str[middle - 1, middle]
    else
        middle = (length - 1) / 2
        output = str[middle]
    end 
    output
end 

puts center_of('hello')
puts center_of('cats')
puts center_of('anomaly')
puts center_of('by')

#had I had the method test odd instead of even, I wouldn't need the separate if for length of 1