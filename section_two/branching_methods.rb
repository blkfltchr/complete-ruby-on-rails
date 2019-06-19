# METHODS

def multiply(num_one, num_two)
    puts num_one.to_f * num_two.to_f
end

def add(num_one, num_two)
    puts num_one.to_f + num_two.to_f
end

def divide(num_one, num_two)
    puts num_one.to_f / num_two.to_f
end
  
def subtract(num_one, num_two)
    puts num_one.to_f - num_two.to_f
end
  
def mod(num_one, num_two)
    puts num_one.to_f % num_two.to_f
end
  
puts "What do you want to do. 1) Multiply 2) Add 3) Divide 4) Subtract 5) Find the remainder"
choice = gets.chomp
puts "Enter a number"
num_one = gets.chomp
puts "Input a second number"
num_two = gets.chomp
  
if choice == "1"
    puts "You have chosen to multiply, #{num_one.to_f} x #{num_two.to_f} ="
    multiply(num_one, num_two)
elsif choice == "2"
    puts "You have chosen to add, #{num_one.to_f} + #{num_two.to_f} ="
    add(num_one, num_two)
elsif choice == "3"
    puts "You have chosen to divide, #{num_one.to_f} / #{num_two.to_f} ="
    divide(num_one, num_two)
elsif choice == "4"
    puts "You have chosen to subtract, #{num_one.to_f} - #{num_two.to_f} ="
    subtract(num_one, num_two)
elsif choice == "5"
    puts "You have chosen to find the remainder, #{num_one.to_f} % #{num_two.to_f} ="
    mod(num_one, num_two)
else
    puts "Invalid choice"
end
