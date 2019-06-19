# COMPARISON OPERATORS

# Comparison operators with numbers

puts 10 == 9 # outputs false
puts 10 == 10 # outputs true
puts 10 == "10" # outputs false
puts 10 == "10".to_f # outputs true
puts 10 == "10".to_f # outputs true
puts 10 != 9 # outputs true

puts "-" * 20 

# Comparison operators with strings

puts "hello" != "bye" # outputs true
puts "hello" != "hello" # outputs false
puts "hello" == "hello" # outputs true

puts "-" * 20 

# Greater than / less than operators

puts 100 > 99 # outputs true
puts 100 >= 100 # outputs true
puts 100 >= 100 # outputs true
puts 100 >= 101 # outputs false
puts 100 <= 101 # outputs true

puts "-" * 20 

# Comparing types with .eql?

puts 10 == 10.0 # outputs true
puts 10 === 10.0 # outputs true
puts 10.eql?(10.0) # outputs false (because it's comparing types)
