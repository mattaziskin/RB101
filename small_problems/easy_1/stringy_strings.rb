def stringy(num)
    words = ""
    num.times do |num|
        if num % 2 == 0
            words[num] = '1'
        else
            words[num] = '0'
    end 
end 
return words
end 

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
    
    
def alt_stringy(num,start=1)
    index = 0
    numbers = []
    num.times do |x|
        if start == 1 && index.even?
            numbers[index] = 1
            index = index + 1
        elsif start == 1 && index.odd?
            numbers[index] = 0
            index = index + 1
        elsif start == 0 && index.even?
            numbers[index] = 0
            index = index + 1
        else
            numbers[index] = 1
            index = index + 1
    end 
end 
    numbers.join
end 

puts alt_stringy(6,0) == '010101'
puts alt_stringy(9,0) == '010101010'
puts alt_stringy(4,0) == '0101'
puts alt_stringy(7,0) == '0101010'