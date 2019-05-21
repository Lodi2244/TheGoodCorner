# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
p "Creating 5 fake Users"

5.times do
  User.create!(username: Faker::Internet.username, email: Faker::Internet.unique.email, password: Faker::Internet.password(8))
end

Category.destroy_all
p "Creating 3 fake Categories"

3.times do
  Category.create!(name: Faker::Games::Pokemon.name )
end

Offer.destroy_all
p "Creating 20 fake Offers"


20.times do
Offer.create!(title: Faker::Music::RockBand.name, description: Faker::Movies::BackToTheFuture.quote, price: Faker::Number.decimal(2), category_id: Category.all.sample, user_id: User.all.sample)
end
