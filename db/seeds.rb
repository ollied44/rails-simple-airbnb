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
Flat.destroy_all

puts "Creating flats..."

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  picture_url: 'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?auto=format&fit=crop&w=800&q=80'
)

Flat.create!(
  name: 'Cozy Cabin in the Woods',
  address: '123 Forest Lane, Boulder, CO',
  description: 'A cozy and rustic cabin with beautiful views of the forest. Great for a weekend getaway!',
  price_per_night: 150,
  number_of_guests: 4,
  picture_url: 'https://images.unsplash.com/photo-1528909514045-2fa4ac7a08ba?auto=format&fit=crop&w=800&q=80'
)

Flat.create!(
  name: 'Modern Apartment in New York',
  address: '456 5th Avenue, New York, NY',
  description: 'A sleek and modern apartment in the heart of NYC. Close to everything you need.',
  price_per_night: 300,
  number_of_guests: 2,
  picture_url: 'https://images.unsplash.com/photo-1664261421791-c25c5760f577?q=80&w=3540&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
)

Flat.create!(
  name: 'Beachside Villa in Bali',
  address: 'Jl. Pantai Kuta, Bali',
  description: 'A luxurious villa with a private pool and beach access. Enjoy the sunsets!',
  price_per_night: 500,
  number_of_guests: 6,
  picture_url: 'https://images.unsplash.com/photo-1744448365250-9b6aa1a7e4a3?q=80&w=3552&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
)

puts "Finished!"
