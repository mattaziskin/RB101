def triangle(n)
    n.times do |x|
        whitespace = n - x - 1
        puts "#{' ' * whitespace}#{'*' * (n-whitespace)}" 
    end 
        
end

triangle(5)

=begin
cleaner solution

def triangle(num)
    spaces = num - 1
    stars = 1
    
    num.times do |n|
        puts (' ' * spaces) + ('*' * stars)
        spaces -= 1
        stars += 1
    end
end

=end

def upside_down_triangle(num)
  spaces = 0
  stars = num
    
  num.times do |x|
        
    puts (' ' * spaces) + ('*' * stars)
    stars -= 1
    spaces += 1
    end 
end 
    
upside_down_triangle(5)

def top_left(num)
    spaces = 0
    stars = num
    
    num.times do |x|
        
        puts ('*' * stars) + (' ' * spaces)
        stars -= 1
        spaces += 1
    end
end 

def top_right(num)
    spaces = 0
    stars = num
    
    num.times do |x|
        
        puts (' ' * spaces) + ('*' * stars)
        stars -= 1
        spaces += 1
    end
end 

def bottom_left(num)
    spaces = num - 1
    stars = 1
    
    num.times do |n|
        puts ('*' * stars) + (' ' * spaces)
        spaces -= 1
        stars += 1
      end 
end 

def bottom_right(num)
   spaces = num - 1
    stars = 1
    
    num.times do |n|
        puts (' ' * spaces) + ('*' * stars)
        spaces -= 1
        stars += 1
    end 
end


def choose_your_angle()
  loop do
    puts "Please type 'top right', 'top left', 'bottom right', or 'bottom left' with no quotes"
    input = gets.chomp.downcase
    puts "Please enter an integer"
    size = gets.chomp.to_i
    unless size.is_a? Integer
      puts "Please enter an integer"
      next
    end
    case input
      when 'top right'
        top_right(size)
        break
        when 'top left'
          top_left(size)
          break
        when 'bottom right'
          bottom_right(size)
            break
        when 'bottom left'
          bottom_left(size)
          break
        else
          puts "Error try again"
          next
        end 
        end 
end 
            
choose_your_angle()

=begin

LaunchSchool solution
significantly cleaner 
=end

def ls_triangle(num,orientation = "SW")
  case orientation
  when "SW" then num.times { |x| puts ("*" * x) + "*" }
  when "SE" then num.times { |x| puts " " * ((num-1)-x) + ("*" * x) + '*'}
  when "NW" then num.times { |x| puts "*" * (num-x)}
  when "NE" then num.times { |x| puts (" " * x) + ("*" * (num - x))}
end 
end

ls_triangle(3,"SW")
ls_triangle(3,"NW")
ls_triangle(3,"SE")
ls_triangle(3,"NE")