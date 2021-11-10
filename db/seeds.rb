require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all


puts "Seed is starting..."

chef_names = ["Jamie Oliver", "Gordon Ramsey", "Robert Kutt", "Salt Bae"]

100.times do
    restaurant = Restaurant.create(
                name: Faker::Restaurant.name ,
                stars: rand(1..5),
                address: Faker::Address.street_name,
                chef_name: chef_names.sample
            )

    puts "Restaurant with id:#{restaurant.id} and name: #{restaurant.name} is created!!! "
end

puts "Seed finished"
