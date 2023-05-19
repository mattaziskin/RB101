def prompt(string)
  puts "=> #{string}"
end

prompt("Enter the first number")
first_num = gets.chomp.to_f
prompt("Enter the second number")
second_num = gets.chomp.to_f

prompt("#{first_num} + #{second_num} = #{first_num + second_num}")
prompt("#{first_num} - #{second_num} = #{first_num - second_num}")
prompt("#{first_num} * #{second_num} = #{first_num * second_num}")
prompt("#{first_num} / #{second_num} = #{first_num / second_num}")
prompt("#{first_num} % #{second_num} = #{first_num % second_num}")
prompt("#{first_num} ** #{second_num} = #{first_num ** second_num}")

=begin
discussion
using validation check would eliminate zero division problem
if we wanted floats we would just call .to_f


=end