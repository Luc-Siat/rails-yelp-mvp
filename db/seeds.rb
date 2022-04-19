# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# categories = %w[chinese italian japanese french belgian].sample

10.times do
  # restaurant = Restaurant.create(name: Faker::Company.name, category: categories, address: Faker::Address.street_address)
  review = Review.new(content: Faker::Lorem.paragraph(sentence_count: 5), rating: Faker::Number.between(from: 0, to: 5), restaurant_id: Faker::Number.between(from: 2, to: 13))
  review.save!
end
