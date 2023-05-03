#target is 20
#num multiples [3,5]

#out = 78
def sum_of_multiples(target, factors)
     multiples = []
     factors = [3,5] if factors.empty?
     
     factors.each do |num|
    current_multiple = num
    while current_multiple < target
        if multiples.include?(current_multiple)
            current_multiple = current_multiple + num
            next
        else
            multiples.push(current_multiple)
            current_multiple = current_multiple + num
        end
    end 
end 

        sum = 0

        multiples.each do |num| 
        sum = sum + num
        end 
                     
puts sum
end 

sum_of_multiples(20, [3, 5])  # returns 78
sum_of_multiples(20, [3])     # returns 63
sum_of_multiples(20, [5])     # returns 30
sum_of_multiples(20, [])      # returns 78
sum_of_multiples(1, [])       # returns 0
sum_of_multiples(20, [19])    # returns 19
