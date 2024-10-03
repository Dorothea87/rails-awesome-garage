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
Review.destroy_all
Favourite.destroy_all
Car.destroy_all
Owner.destroy_all

puts "Creating owners..."
owner1 = Owner.create!(nickname: "Sugar_daddy")
owner2 = Owner.create!(nickname: "green_mom")
owner3 = Owner.create!(nickname: "car_tuner65")

puts "Creating cars..."

Car.create!{brand: "Volkswagen", model: "Polo", year: "2014", fuel: "unleaded petrol", owner: owner3}
Car.create!{brand: "MINI", model: "Cooper", year: "2024", fuel: "electric", owner: owner2}
Car.create!{brand: "Ferrari", model: "Roma", year: "2020", fuel: "unleaded petrol", owner: owner1}

puts "Finished! #{Owner.all.count} owners created."
