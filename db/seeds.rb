# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Performance.destroy_all

40.times do
  user = User.create!(
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    image_url: Faker::Internet.url
  )

  Performance.create!(
    name: Faker::Movie.title,
    venue: Faker::Address.full_address,
    price: Faker::Commerce.price,
    description: Faker::Lorem.paragraph,
    image_url: Faker::Internet.url,
    date: Faker::Date.in_date_period,
    city: Faker::Address.city,
    highlight: Faker::Movie.quote,
    user: user
  )
end

p "created #{Performance.count} performances"
