def print_in_box(message)
    horizontal = "+#{'-' * (message.size + 2)}+"
    empty_line = "|#{' ' * (message.size + 2)}|"
    
    puts horizontal
    puts empty_line
    puts "| #{message} |"
    puts empty_line
    puts horizontal
end
    
print_in_box('To boldly go where no one has gone before.')