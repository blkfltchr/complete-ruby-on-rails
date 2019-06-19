my_name = {'first_name' => 'Blake','last_name' => 'Fletcher' }

p my_name['first_name'] # outputs "Blake"

puts "-" * 20 

symbol_hash = { a: 1, b: 2, c: 3, d: 4}
p symbol_hash # outputs {:a=>1, :b=>2, :c=>3, :d=>4}

# To call the a key which represents 1
p symbol_hash[:a]

# To add something to a hash
symbol_hash[:e] = 5
p symbol_hash # outputs {:a=>1, :b=>2, :c=>3, :d=>4, :e=>5}

p symbol_hash.keys # ouputs [:a, :b, :c, :d, :e]
p symbol_hash.values # ouputs [1, 2, 3, 4, 5]

# To delete something from our hash
symbol_hash.delete(:e)
symbol_hash.delete(:d)
symbol_hash.delete(:c)
p symbol_hash # ouputs {:a=>1, :b=>2}

puts "-" * 20 

symbol_hash.each do |key, value|
    puts "The class for key is #{key.class}; the class for value is #{value.class}."
end

# ouputs
# The class for key is Symbol; the class for value is Integer.
# The class for key is Symbol; the class for value is Integer.

my_name.each do |key, value|
    puts "The class for key is #{key.class}; the class for value is #{value.class}."
end

# ouputs:
# The class for key is String; the class for value is Integer.
# The class for key is String; the class for value is Integer.

puts "-" * 20 

symbol_hash.each { |symbol_key, symbol_value| puts "The key is #{symbol_key} and the value is #{symbol_value}." }

# outputs:
# The key is a and the value is 1.
# The key is b and the value is 2.

sho = symbol_hash.select { |k, v| v.odd? }
puts sho # outputs {:a=>1}

puts "-" * 20 

# ADDING AND EDITING HASHES

puts symbol_hash # outputs {:a=>1, :b=>2}
symbol_hash[:c] = 1
puts symbol_hash # outputs {:a=>1, :b=>2, :c=>1}
symbol_hash[:b] = 1
puts symbol_hash # outputs {:a=>1, :b=>1, :c=>1}