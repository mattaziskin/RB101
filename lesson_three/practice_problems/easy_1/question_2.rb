=begin
Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

    what is != and where should you use it?
    put ! before something, like !user_name
    put ! after something, like words.uniq!
    put ? before something
    put ? after something
    put !! before something, like !!user_name
=end

# ! is the bang attached to certain methods to indicate destructive methods OR to indicate 'not' such as != meaning "not equal"
# ? can either be a ternary operator or attached to methods such as .include? to check a condition
# != means not equal, used in a conditional check like an if statement
# !user_name is used to return the opposite of its boolean equivalent
# words.uniq! is a destructive method which modifies the words array to only have the unique words remaining
# ? before something is check for truthy and will check its boolean value and return based on true or false
# ? after is usually a method check like include? or is_even? which is checking the truthiness of that method
# !! is "not not" so !!true is true and !!false is false and turns objects into their boolean equivalent
