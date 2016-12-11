# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create :user_name => "Zoler", :email => "clement.soler@hetic.net", :password => "secretpass", :avatar => File.new("#{Rails.root}/public/seedbox/clem.jpg")
user2 = User.create :user_name => "Eden", :email => "eden.bitton@hetic.net", :password => "secretpass", :avatar => File.new("#{Rails.root}/public/seedbox/eden.jpg")
user3 = User.create :user_name => "Antoine", :email => "antoine.frebault@hetic.net", :password => "secretpass", :avatar => File.new("#{Rails.root}/public/seedbox/antoine.jpg")
