def palindrome?(string)
  string == string.reverse
end
puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

palindrome?('madam')

def multi_palindrome?(object)
object == object.reverse
end

a = [true, "hello", 'guys', 'hello', true]
b = [1,2,3,4,3,2,1]
c = [1,2,3,2,3,2]
puts multi_palindrome?(a)
puts multi_palindrome?(b)
puts multi_palindrome?(c)