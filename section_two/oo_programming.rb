#Object oriented programming is a programming paradigm that uses objects
# and their interactions to design and program applications.

# A class is a blueprint that describes the state and behaviour 
# that the objects of the class all share. A class can be used to 
# create many objects. Objects created at runtime from a class are 
# called instances of that particular class.

# Example of a user class

class User
  # gives getters and setters
  attr_accessor :first_name, :last_name, :email, :username

  # only allows getter function
  # attr_reader :username
  

  # every time you create a new User class
  # this method runs and sets all of the values
  def initialize(first_name, last_name, username, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
  end

  # attr_accessor does the following for whatever is defined

  # #setter method, changing the username
  # def set_username=(name)
  #   @username = name
  # end

  # # getter method, printing the username
  # def get_username
  #   @username
  # end

  def to_s
    "First name: #{first_name}, Last name: #{last_name}, Username: #{@username}, Email: #{email}"
  end

end

# To create an object of the class, you call it and use the .new keyword
jack = User.new("Jack", "Black", "jacky_boy", "jackyboy33@gmail.com")
joe = User.new("Joe", "Shmoe", "shmoemeister", "shmoemeister@gmail.com")

puts jack
puts joe
