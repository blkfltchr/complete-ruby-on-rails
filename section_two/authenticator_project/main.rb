# User data 

users = [
    { username: "username", password: "password" },
    { username: "hello", password: "world" },
    { username: "me", password: "1a2b3c" },
    { username: "blake", password: "fletcher" }
]

# Authenticate user method

def auth_user(username, password, list_of_users)
    list_of_users.each do |current_user|
        if current_user[:username] == username && current_user[:password] == password
            return "Welcome, #{current_user[:username]}!"
        end
    end
    return "Invalid credentials"
end

# User greeting

puts "-" * 20 
puts "Welcome to the authenticator"
puts "-" * 20 
puts "This program will ask you to login,"
puts "check for your username,"
puts "and compare your password."
puts "If your credentials are valid,"
puts "you will be logged in."
puts "-" * 20 

# Give the user 4 attempts to input their user credentials

attempts = 1

while attempts < 4

    # Get username and password
    print "Username: "
    username = gets.chomp

    print "Password: "
    password = gets.chomp

    # Compare user's input to users array (naive implementation)
    # users.each do |user|
    #     if user[:username] && user[:password] == password
    #         puts "Welcome, #{user[:username]}!"
    #         break
    #     else 
    #         puts "Invalid credentials"
    #     end
    # end

    # Compare user's input to users array (method implementation)
    authentication = auth_user(username, password, users)
    puts authentication

    # If user presses q, quit program
    puts "Press any key to try again or q to quit"
    input = gets.chomp.downcase
    break if input == "q"

    attempts += 1
end

# When user exceeds 4 attempts
puts "You have exceeded the number of attempts." if attempts == 4
