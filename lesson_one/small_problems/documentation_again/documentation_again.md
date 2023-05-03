1)      Class and Instance Methods

File::Path class method
File#Path returns a string of the file path of an instance



2)      Optional Arguments Redux
what will the following print
require 'date'

puts Date.civil    -4712-01-01 (Julian date)
puts Date.civil(2016) 2016-01-01
puts Date.civil(2016, 5) 2016-05-01
puts Date.civil(2016, 5, 13) 2016-05-13


3)      Default Arguments in the Middle
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

This will print [4,5,3,6]
a and d accept the 4 and 6 input with 5 going to the first default position

4)      Mandatory Blocks
a = [1, 4, 8, 11, 15, 19]

value = a.bsearch {|x| x > 8}
puts value 

5)      Multiple Signatures
a = %w(a b c d e)
puts a.fetch(7) looks for the 7th index, fails and IndexError occurs
puts a.fetch(7, 'beats me') same process as above but defaults to "beats me"
puts a.fetch(7) { |index| index**2 } 49

%w creates an array of strings

6)      Keyword Arguments
5.step(to: 10, by: 3) { |value| puts value }

puts 5 then 8, starting at a num the block prints the start (5) and increments by 3 and prints until the limit (10)


7)      Parent Class
s = 'abc'
puts s.public_methods.inspect

puts all methods available to object
puts s.public_methods(false).inspect
only puts methods available to the caller (s is a string)

8)      Included Modules

a = [5, 9, 3, 11]
puts a.min

puts a.min(2) prints both 3 and 5

9)      Down the Rabbit Hole

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

Simpy located futher documentation under the Psych alias listed

