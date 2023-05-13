def prompt(message)
  Kernel.puts("=> #{message}")
end 

def valid_number?(num)
  num.to_i() != 0
end 

def operation_to_message(op)
  case op 
  when '1'
    "Adding"
  when "2"
    "Subtracting"
  when "3"
    "Multiplying"
  when '4'
    "Dividing"
  end 
end

prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = gets.chomp
  if name.empty?()
    prompt("Make sure to enter a valid name")
  else
    break
  end 
end

prompt "Hi #{name}"

loop do #main loop
  num_1 = ''
  num_2 = ''
  loop do 
    prompt("What's the first number?")
    num_1 = Kernel.gets().chomp
  
    if valid_number?(num_1)
      break
    else
      prompt("Invalid number, try again")
    end 
  end 
  loop do 
    prompt("What is the second number?")
    num_2 = Kernel.gets().chomp
    
    if valid_number?(num_2)
      break
    else
      prompt("Invalid number, try again")
    end 
  end 
  operator_prompt = <<-MSG
    Please choose a number
    1) Add
    2) Subtract
    3) Multiply
    4) Divide
  MSG
  prompt(operator_prompt)
  choice = ''
  loop do
    choice = Kernel.gets().chomp.downcase
    if %w(1 2 3 4).include?(choice)
      break
    else
      prompt "Please enter a valid choice (1, 2, 3, 4)"
    end 
  end 
  
  prompt("#{operation_to_message(choice)} the two numbers...")
  
  result = case choice
            when '1'
              num_1.to_i() + num_2.to_i
            when '2'
              num_1.to_i() - num_2.to_i
            when '3'
              num_1.to_i() * num_2.to_i
            when '4'
              num_1.to_f() / num_2.to_f
            end
            
            
  prompt("The result is #{result}")
  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
end 

prompt("Thanks for using calculator")