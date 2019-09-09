# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Unit.create(name: "Blabla", photo: "https://picsum.photos/200/300", category: "Kidnapping", description: "blsfvsfv sdvs sds sdsv sdvsv sdvsv")
# Unit.create(name: "Jivv", photo: "https://picsum.photos/200/300", category: "Kidnapping", description: "blsfvsfv sdvs sds sdsv sdvsv sdvsv")
# Unit.create(name: "Ijdsv", photo: "https://picsum.photos/200/300", category: "Kidnapping", description: "blsfvsfv sdvs sds sdsv sdvsv sdvsv")
# Unit.create(name: "On sdv", photo: "https://picsum.photos/200/300", category: "Kidnapping", description: "blsfvsfv sdvs sds sdsv sdvsv sdvsv")
# Unit.create(name: "Ojsbsvd", photo: "https://picsum.photos/200/300", category: "Kidnapping", description: "blsfvsfv sdvs sds sdsv sdvsv sdvsv")
# Unit.create(name: "Njsd", photo: "https://picsum.photos/200/300", category: "Kidnapping", description: "blsfvsfv sdvs sds sdsv sdvsv sdvsv")
# Unit.create(name: "Jwdv", photo: "https://picsum.photos/200/300", category: "Kidnapping", description: "blsfvsfv sdvs sds sdsv sdvsv sdvsv")
# Unit.create(name: "Wdsc", photo: "https://picsum.photos/200/300", category: "Kidnapping", description: "blsfvsfv sdvs sds sdsv sdvsv sdvsv")
# Unit.create(name: "Isdv", photo: "https://picsum.photos/200/300", category: "Kidnapping", description: "blsfvsfv sdvs sds sdsv sdvsv sdvsv")
# Unit.create(name: "Bsdv", photo: "https://picsum.photos/200/300", category: "Kidnapping", description: "blsfvsfv sdvs sds sdsv sdvsv sdvsv")





Unit.destroy_all
User.destroy_all
user = User.create!(email: 'jpeterek@google.com', password: 'testtest')
p user
6.times do
Unit.create!(name: 'unit awesome' ,category: 'Financial Problems', description: 'Specialized on solving financial disputes', user_id: user.id, photo:'https://lp-cms-production.imgix.net/news/2017/08/bodyguard.jpg?fit=max&w=800&q=40&sharp=10&vib=20')
end
