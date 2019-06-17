# Strings can be defined with single or double quotes

single_quotes = 'This is a string'

double_quotes = "This is also a string"

# p single_quotes
# p double_quotes

# String concatenation

first_name = "Blake"
last_name = "Fletcher"

puts first_name + last_name # outputs BlakeFletcher

# String interpolation (Note you need double quotes to make #{} work) 

puts "My first name is #{first_name} and my last name is #{last_name}." # My first name is Blake and my last name is Fletcher.

# To see the typeOf

p first_name.class

# To see the available methods

p first_name.methods

# To convert and integer to a string (using method chaining)

p 10.to_s.class

# .length, .reverse, .capitalize, empty?

full_name = "#{first_name} #{last_name}"

p full_name.length # ouputs 14
p full_name.reverse # outputs rehctelF ekalB
p full_name.capitalize # outputs Blake fletcher
p full_name.empty? # false

# To substitute part of a string

p full_name.sub("Fletcher", "Fletcha") # outputs Blake Fletcha

# Using escaping with \'

p '\'Hello world\', the computer said.'

# User input with gets.chomp

puts "What is your first name?"
f_name = gets.chomp
puts "Hello, #{f_name}" # outputs Hello, Blake


