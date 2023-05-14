require 'yaml'

MESSAGES = YAML.load_file("calculator_messages.yml",{})
def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end 

def integer?(num)
  num.to_i.to_s == num
end 

def float?(num)
  num.to_f.to_s == num
end 

def number?(input)
  integer?(input) || float?(input)
end 

def operation_to_message(op)
  word = case op 
         when '1'
           "Adding"
         when "2"
           "Subtracting"
         when "3"
           "Multiplying"
         when '4'
           "Dividing"
         end 
  x = "Inserted code later"
  word
end



prompt(messages('welcome'))

name = ''
loop do
  name = gets.chomp
  if name.empty?()
    prompt(messages('valid_name'))
  else
    break
  end 
end

prompt "Hi #{name}" #Couldn't get interpolation to work with YAML

loop do #main loop
  num_1 = ''
  num_2 = ''
  loop do 
   prompt(messages('number_prompt'))
    num_1 = Kernel.gets().chomp
  
    if number?(num_1)
      break
    else
      prompt(messages('invalid_number'))
    end 
  end 
  loop do 
    prompt(messages('number_prompt2'))
    num_2 = Kernel.gets().chomp
    
    if number?(num_2)
      break
    else
      prompt(messages('invalid_number'))
    end 
  end 
  operator_prompt = <<-MSG
    Please choose a number
    1) Add
    2) Subtract
    3) Multiply
    4) Divide
  MSG
  prompt(operator_prompt) #The MSG formatting wasn't transferring to YAML
  choice = ''
  loop do
    choice = Kernel.gets().chomp.downcase
    if %w(1 2 3 4).include?(choice)
      break
    else
      prompt(messages('valid_operator'))
    end 
  end 
  
  prompt("#{operation_to_message(choice)} the two numbers...") #Couldn't get interpolation to work with YAML
  
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
            
            
  prompt("The result is #{result}") #Couldn't get interpolation to work with YAML
  prompt(messages('another'))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
end 

prompt(messages('thanks'))