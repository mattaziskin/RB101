def real_palindrome?(input)
  input.downcase!
  input.delete!('^a-z0-9')
  if input == input.reverse!
    return true
  else
    return false
  end

end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false