# Three ways to ouput Hello world

print "Hello world 1\n"  # outputs Hello world (needs new line)

puts "Hello world 2" # outputs Hello world

p "Hello world 3" # outputs "Hello world" (with quotation marks)

# With a variable

greeting = "Hello world 4"

puts greeting

# With a method

def say_hello(greeting)
    puts greeting
end

say_hello "Hello world 5" # call it like so
