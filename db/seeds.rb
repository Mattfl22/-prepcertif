# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Deleting existing restaurants"

Review.destroy_all
Restaurant.destroy_all

puts "Creating new restaurants..."

10.times do
  restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.city, stars: rand(1..5), chef: Faker::Name.first_name, cuisine_type: Faker::Food.ethnic_category)
  restaurant.save!
end

puts 'All done'
