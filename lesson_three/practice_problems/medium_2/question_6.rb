# How could the following method be simplified without changing its return value?

def color_valid(color)
  color == "blue" || color == "green"
end

puts color_valid('blue')

#This works simpler than an if/else because the statment will evaluate
# to true/false and return the boolean