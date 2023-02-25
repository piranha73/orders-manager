# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying previous meals"
Meal.destroy_all

puts "Destroying previous tables"
Table.destroy_all

puts "seeding tables"
Table.create(name: "Le Wagon Bali")
Table.create(name: "Shishi")

puts "seeding meals"

50.times do
  meal = Meal.create(name: Faker::Food.dish)
  puts "created meal id ##{meal.id}"
end

puts "Seeded:"
puts "#{Table.count} tables"
puts "#{Meal.count} meals"

puts "finish seeding"