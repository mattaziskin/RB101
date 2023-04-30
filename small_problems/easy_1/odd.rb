def is_odd?(num)
    num % 2 == 0 ? false : true
end 

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
   
   
def alt_is_odd? (num)
   
   num.remainder(2) == 0 ? false:true
end
puts alt_is_odd?(2)    # => false
puts alt_is_odd?(5)    # => true
puts alt_is_odd?(-17)  # => true
puts alt_is_odd?(-8)   # => false
puts alt_is_odd?(0)    # => false
puts alt_is_odd?(7)    # => true