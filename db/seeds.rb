# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  Performance.create!(
    name: Faker::Movie.title,
    venue: Faker::Address.full_address,
    price: Faker::Commerce.price,
    description: Faker::paragraph,
    image_url: Faker::internet.url,
    date: Faker::Date.in_date_period,
    user_id: Faker::Internet.username
  )
end
