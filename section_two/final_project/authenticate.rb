module Authenticate

  require 'bcrypt'

  def hash_password(password)
    BCrypt::Password.create(password)
  end

  def verify_password(password)
    BCrypt::Password.new(password)
  end

  def create_secure_users(list_of_users)
    list_of_users.each do |current_user|
      current_user[:password] = hash_password(current_user[:password])
    end
    list_of_users
  end

  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |current_user|
      if current_user[:username] == username && verify_password(current_user[:password]) == password
        return "Welcome, #{current_user[:username]}!"
      end
    end
    return "Invalid credentials"
  end

end