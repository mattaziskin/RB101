# Study the following code and state what will be displayed...and why:

def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"
  string_param_two << "rutabaga"
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
tricky_method(string_arg_one, string_arg_two)

puts "String_arg_one looks like this now: #{string_arg_one}"
puts "String_arg_two looks like this now: #{string_arg_two}"

=begin
String+= is REASSIGNMENT and that is not a method that mutates
the caller, it points to a new value
The shovel method << mutates the caller so that it points to
the same ID with a new value


I think this is bad practice because you shouldn't try to edit
two variables in one method
=end