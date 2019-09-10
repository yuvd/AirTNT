Booking.destroy_all
Unit.destroy_all
User.destroy_all


user = User.create!(email: 'jpeterek@google.com', password: 'testtest')
p user
6.times do
Unit.create!(name: 'unit awesome' ,category: 'Financial Problems', description: 'Specialized on solving financial disputes', user_id: user.id, photo:'https://lp-cms-production.imgix.net/news/2017/08/bodyguard.jpg?fit=max&w=800&q=40&sharp=10&vib=20')
end
b = Booking.create!(start_date: '3.12.2019', end_date: '4.12.2019', target_name: 'Alex', target_address: 'Berlin', unit_id: Unit.last.id, user_id: user.id)
