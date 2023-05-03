
def print_in_box(message, max)
    max_size = max - 5
    if message.size > max_size
        message = message.slice!(0,75)
    end
    horizontal = "+#{'-' * (message.size + 2)}+"
    empty_line = "|#{' ' * (message.size + 2)}|"
    
    puts horizontal
    puts empty_line
    puts "| #{message} |"
    puts empty_line
    puts horizontal
end
    
print_in_box('To boldly go where no one has gone before.fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', 80)


def wrap_print_in_box(message, max)
    max_size = max - 5
    message_split = message.scan /.{75}/

    horizontal = "+#{'-' * (max_size + 2)}+"
    empty_line = "|#{' ' * (max_size + 2)}|"
    
    puts horizontal
    puts empty_line
    message_split.each do |section|
        puts "| #{section} |"
    end 
    puts empty_line
    puts horizontal
end

wrap_print_in_box('To boldly go where no one has gone before.fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', 80)
