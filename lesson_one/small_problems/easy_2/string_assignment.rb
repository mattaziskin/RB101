name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# both come out to BOB because the upcase! method mutates the object that both the name and save_name variable point to