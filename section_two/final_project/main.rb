require_relative 'authenticate'

users = [
  { username: "username", password: "password" },
  { username: "hello", password: "world" },
  { username: "me", password: "1a2b3c" },
  { username: "blake", password: "fletcher" }
]

new_users = Authenticate.create_secure_users(users)

puts Authenticate.authenticate_user("blake", "fletcher", new_users)
# ouputs Welcome, blake!
