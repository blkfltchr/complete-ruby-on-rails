# Arrays are ordered lists of items
# Arrays maintain an index for each item

a = [1, 2, 3]
p a # outputs [1, 2, 3]
p a.last # outputs 3
puts "-" * 20 

# Using range to create an array

x = 1..10
y = x.to_a
z = y.shuffle
p y # outputs [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p z # outputs [6, 9, 5, 7, 10, 3, 8, 2, 4, 1] (for example)
p y.reverse # ouputs [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
p y # outputs [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p y.reverse! # the bang! mutates the caller, without it y remains the same
p y # ouputs [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

puts "-" * 20 

# Unshift, append, uniq, empty?, include?, push, pop, split

p y.reverse! << 11 # outputs [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
p y.unshift(0) # outputs [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11] (adds to the beginning of the array)
p y.append(12) # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12] (appends to the end of the array)
p y.append(0) # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 0]
p y.uniq! # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12] (removes duplicates)

b = []
p b.empty? # outputs true

p y.include?(7) # ouputs true
p y.include?(14) # ouputs false
p y.push(13) # ouputs [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13] (appends to the end of the array)
yp = y.pop() # removes the last item
p yp # ouputs 13
p y # ouputs [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

yj = y.join(", ") 
p yj # outputs "0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12" (joins the array into a string)

p yj.split(", ") # ouputs ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"] (splits a string into an array)

puts "%w does the same..." 
p %w(0 1 2 3 4 5 6 7 8 9 10 11 12) # ouputs ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"] (splits a string into an array)

puts "-" * 20 

# ITERATORS

# .each

y.each { |i| print i * 2 } # outputs 024681012141618202224
puts

# .select

s = y.select { |num| num.odd? } # selects the odd numbers
p s # outputs [1, 3, 5, 7, 9, 11]
