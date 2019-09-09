# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Unit.destroy_all
User.destroy_all
Booking.destroy_all

user = User.create!(email: 'jpeterek@google.com', password: 'testtest')

p user

u = Unit.create!(name: 'unit awesome' ,category: 'Financial Problems', description: 'Specialized on solving financial disputes', user_id: user.id, photo: 'https://lp-cms-production.imgix.net/news/2017/08/bodyguard.jpg?fit=max&w=800&q=40&sharp=10&vib=20')

p u

b = Booking.create!(start_date: '3.12.2019', end_date: '4.12.2019', target_name: 'Alex', target_address: 'Berlin', unit_id: u.id, user_id: user.id)

p b
