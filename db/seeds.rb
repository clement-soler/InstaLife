# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create :user_name => "User1", :email => "user1@example.com", :password => "localtest"
user2 = User.create :user_name => "User2", :email => "user2@example.com", :password => "localtest"
user3 = User.create :user_name => "User3", :email => "user3@example.com", :password => "localtest"
