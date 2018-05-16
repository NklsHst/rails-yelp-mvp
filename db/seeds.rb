# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
require 'open-uri'

puts 'Cleaning database...'
Restaurant.destroy_all

review_link = "Link to reviews"
categories = ["chinese", "italian", "japanese", "french", "belgian"]

puts 'Creating restaurants...'

10.times do
restaurants_attributes = [
  {
    name:          Faker::Book.title,
    address:       Faker::Address.street_address,
    phone_number:  Faker::PhoneNumber.phone_number,
    category:      categories.sample,

  },

]
Restaurant.create!(restaurants_attributes)
end
puts 'Finished!'
