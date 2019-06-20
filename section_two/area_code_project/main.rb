dial_book = {
  "newyork" => "212",
  "toronto" => "416",
  "sanfrancisco" => "301",
  "miami" => "305",
  "vancouver" => "604",
  "losangeles" => "213",
  "chicago" => "312",
  "atlanta" => "404",
  "seattle" => "206",
  "montreal" => "514"
}
 
# Get city names from the hash
def get_city_names(somehash)
  # print out the names of the cities
  somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end
 
# Execution flow
loop do
  # Prompt user input
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase
  # break if n
  break if answer != "y"
  puts "Which city do you want the area code for?"
  # print city names to the terminal
  puts get_city_names(dial_book)
  # Prompt user input
  print "Enter your selection: "
  prompt = gets.chomp.downcase
  if dial_book.include?(prompt)
    puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}."
  else
    puts "Invalid city name."
  end
end
