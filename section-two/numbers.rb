puts 10 / 4 # outputs 2

puts 10.0 / 4 # outputs 2.5 (you have to convert one to a float)

x = 5 

y = 10

puts y / x # outputs 2 

# Creating a divider

puts "-" * 20 
# outputs --------------------
20.times { print "-" }
# outputs --------------------
puts

# Using rand

# 10.times { print rand(10) } # outputs 7897029634 (for example)
puts rand(100) # outputs 44 (for example)

# Using .to_i to convert a string to an int & .to_f to convert an int to a float

a = "5".to_i
b = a.to_f
puts b # outputs 5.0

# Adding, subtracting, multiplying, dividing, modulo two numbers together (after converting them to integers)

puts "Enter a number"
num_one = gets.chomp
puts "Input a second number"
num_two = gets.chomp
puts "#{num_one.to_i} x #{num_two.to_i} = #{num_one.to_i * num_two.to_i}"
puts "#{num_one.to_i} + #{num_two.to_i} = #{num_one.to_i + num_two.to_i}"
puts "#{num_one.to_i} / #{num_two.to_i} = #{num_one.to_f / num_two.to_f}"
puts "#{num_one.to_i} - #{num_two.to_i} = #{num_one.to_i - num_two.to_i}"
puts "#{num_one.to_i} % #{num_two.to_i} = #{num_one.to_f % num_two.to_f}"
