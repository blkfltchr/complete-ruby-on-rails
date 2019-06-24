# MVC - Model, View, Controller

## General flow of Rails application:

1. Request made at browser
2. Request received at router of rails application
3. Request routed to appropriate controller
4. Controller either renders a view template or communicates with model
5. Model communicates with database
6. Model sends back information to controller
7. Controller renders view

## File structure

**Models, views, controllers**
- `./app/controllers`
- `./app/models`
- `./app/views`

**Routes**
- `./config/routes.rb`

**Assets**
- `./app/assets/images`
- `./app/assets/javascripts`
- `./app/assets/stylesheets`

**Config**
- `./config/database.yml` (tells you how your app is communicating with the database)
- `./config/environments` (settings for dev, production and test environments)

**Gemfile**
- `./Gemfile` (all the gems for your app)

## Commands 

To run the server: `$ rails server`