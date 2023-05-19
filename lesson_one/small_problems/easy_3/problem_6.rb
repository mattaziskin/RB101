def xor?(eval1, eval2)
  if eval1 == true && eval2 == true
    return false
  elsif eval1 == false && eval2 == false
    return false
  elses
    return true
  end
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false

#LS SOLUTION

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

#SHORTENED

def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end