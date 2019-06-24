require_relative 'authenticate'

class User
  include Authenticate
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name: #{first_name}, Last name: #{last_name}, Username: #{@username}, Email: #{email}"
  end

end

# To create an object of the class, you call it and use the .new keyword
jack = User.new("Jack", "Black", "jackyboy33@gmail.com", "jacky_boy", "123456")

hashed_password = jack.hash_password(jack.password)
puts hashed_password #outputs $2a$12$oaSs7V5PLKFkXIopyPlUkuyHOqPC9YSQa0mucFhMpiVCv5IRl8nwq

puts hashed_password == "123456" # outputs true
