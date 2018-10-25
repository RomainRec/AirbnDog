# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  city = City.create!(
    city_name: Faker::HarryPotter.house
    )
  dogsitter = Dogsitter.create!(
  	first_name: Faker::Dessert.variety,
  	last_name: Faker::HarryPotter.spell,
  	city_id: rand(City.first.id..City.last.id)
  	)
  dog = Dog.create!(
  	name: Faker::HarryPotter.house,
    breed: Faker::HarryPotter.spell,
  	city_id: rand(City.first.id..City.last.id)
  	)
  stroll = Stroll.create(
    stroll_date: Faker::Date.backward(14),
    dogsitter_id: rand(Dogsitter.first.id..Dogsitter.last.id),
    dog_id: rand(Dog.first.id..Dog.last.id)
    )
end


