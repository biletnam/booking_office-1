# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

RailwayStation.create(title: 'Moscow')
RailwayStation.create(title: 'Obninsk')
RailwayStation.create(title: 'Balabanovo')
RailwayStation.create(title: 'Naro-Fominsk')
RailwayStation.create(title: 'Skolkovo')
RailwayStation.create(title: 'Aprelevka')

Train.create(number: 'z5649Gh')
Train.create(number: 'ty7778Q')
Train.create(number: 'ML8097y')
Train.create(number: 'vX6789H')
Train.create(number: 'Sd564gJ')
Train.create(number: 'as34fg6')

Route.create(name: 'Obninsk - Moscow')
Route.create(name: 'Naro-Fominsk - Moscow')



