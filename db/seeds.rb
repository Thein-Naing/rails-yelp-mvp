# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Cleaning database.....'
Restaurant.destroy_all

5.times do
  puts 'Creating restaurant....'

  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name, #=> "Curry King"
    address: Faker::Address.street_address, #=> "address"
    phone_nbumber: Faker::PhoneNumber.phone_number, #=> "444 222 xx xx."
    category: Restaurant::CATOGORIES.sample
  )

  puts "Created restaurant #{restaurant.id}"

  puts 'Creating reviews.....'
  review = Review.create!(
    content: Faker::Restaurant.review,
    rating: rand(0..5),
    restaurant:
  )

  puts "Successfully created review #{review.id} for restaurant #{restaurant.id}"
end
