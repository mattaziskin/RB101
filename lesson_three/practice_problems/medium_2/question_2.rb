a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# numbers have set IDS so all should be same ID
# this is due to integers immutabiltiy