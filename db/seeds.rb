# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Car.destroy_all

puts "Creating cars..."
polo = {brand: "Volkswagen", model: "Polo", year: "2014", fuel: "unleaded petrol"}
mini = {brand: "MINI", model: "Cooper", year: "2024", fuel: "electric"}
ferrari = {brand: "Ferrari", model: "Roma", year: "2020", fuel: "unleaded petrol"}

[polo, mini, ferrari].each do |attributes|
  car = Car.create!(attributes)
  puts "Created #{car.name}"
end
puts "Finished!"
