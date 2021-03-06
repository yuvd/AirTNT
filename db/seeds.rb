Booking.destroy_all
Unit.destroy_all
User.destroy_all


user = User.create!(email: 'jpeterek@google.com', password: 'testtest')
p user

unit1 = Unit.create!(name: 'The IRS' ,category: 'Relationship Issues', address: 'Allenby 73, Tel Aviv', description: 'Specialized on solving relationship issues', user_id: user.id, photo:'https://lp-cms-production.imgix.net/news/2017/08/bodyguard.jpg?fit=max&w=800&q=40&sharp=10&vib=20')
unit2 = Unit.create!(name: 'The IRA' ,category: 'Financial Problems', address: 'Ben Yehuda 32, Tel Aviv',  description: 'Specialized on solving financial disputes', user_id: user.id, photo:'https://secure.i.telegraph.co.uk/multimedia/archive/03447/South_African_Mini_3447844b.jpg')
unit3 = Unit.create!(name: 'Ragnars Raiders' ,category: 'Neighbour disputes', address: 'Hakovshim 14, Tel Aviv',  description: 'Specialized on solving financial disputes', user_id: user.id, photo:'https://pmctvline2.files.wordpress.com/2019/07/scream-resurrection-finale.jpg?w=620&h=420&crop=1')
unit4 = Unit.create!(name: 'Greenday' ,category: 'Family Matters', address: 'Bograshov 14, Tel Aviv',  description: 'Specialized on solving financial disputes', user_id: user.id, photo:'https://pmcvariety.files.wordpress.com/2019/07/the-bodyguard.jpg?w=1000&h=562&crop=1')
unit5 = Unit.create!(name: 'Pablos Pablos' ,category: 'Financial Problems', address: 'Gordon 14, Tel Aviv',  description: 'Nothing we cannot due for you', user_id: user.id, photo:'https://cdn.websites.hibu.com/b44ffcdb354947e89cd60e0c13371c97/dms3rep/multi/desktop/Private+Detective+Iowa+Investigations+Investigator.JPG')
unit6 = Unit.create!(name: 'El Cartel de Cali' ,category: 'Family Matters', address: 'Frishman 14, Tel Aviv',  description: 'Specialized on solving all your problems', user_id: user.id, photo:'https://d3i11hp0zpbt87.cloudfront.net/media/W1siZiIsIjIwMTgvMDcvMjcvMjAvNDYvMjEvMTdmZmE2OTgtNmYyZi00ZmMwLTg1ZmEtZDIwMDMxNTI2Y2Q0L1RoaW5rc3RvY2tQaG90b3MtNTg5OTU5MDEyLmpwZyJdLFsicCIsInRodW1iIiwiMTI0MHg2NDAjIl1d?basename=Should+Survivors+Hire+a+Private+Investigator%3F&sha=fae7f63de50252f4')
unit7 = Unit.create!(name: 'Fast & Furious' ,category: 'Business Matters', address: 'Levinsky 42, Tel Aviv', description: 'Specialized in business-related disputes', user_id: user.id, photo:'https://lp-cms-production.imgix.net/news/2017/08/bodyguard.jpg?fit=max&w=800&q=40&sharp=10&vib=20')
unit8 = Unit.create!(name: 'Unit 42' ,category: 'Financial Problems', address: 'Ben Yehuda 32, Tel Aviv',  description: 'Specialized on solving financial disputes', user_id: user.id, photo:'https://secure.i.telegraph.co.uk/multimedia/archive/03447/South_African_Mini_3447844b.jpg')
unit9 = Unit.create!(name: 'Snipers R Us' ,category: 'Neighbour disputes', address: 'Hakovshim 14, Tel Aviv',  description: 'Specialized on solving financial disputes', user_id: user.id, photo:'https://pmctvline2.files.wordpress.com/2019/07/scream-resurrection-finale.jpg?w=620&h=420&crop=1')
unit10 = Unit.create!(name: 'Nuclear Winter' ,category: 'Family Matters', address: 'Bograshov 14, Tel Aviv',  description: 'Specialized on solving financial disputes', user_id: user.id, photo:'https://pmcvariety.files.wordpress.com/2019/07/the-bodyguard.jpg?w=1000&h=562&crop=1')
unit11 = Unit.create!(name: 'BANE?!' ,category: 'Financial Problems', address: 'Gordon 14, Tel Aviv',  description: 'Nothing we cannot due for you', user_id: user.id, photo:'https://cdn.websites.hibu.com/b44ffcdb354947e89cd60e0c13371c97/dms3rep/multi/desktop/Private+Detective+Iowa+Investigations+Investigator.JPG')
unit12 = Unit.create!(name: 'The Gangsters Gang' ,category: 'Family Matters', address: 'Frishman 14, Tel Aviv',  description: 'Specialized on solving all your problems', user_id: user.id, photo:'https://d3i11hp0zpbt87.cloudfront.net/media/W1siZiIsIjIwMTgvMDcvMjcvMjAvNDYvMjEvMTdmZmE2OTgtNmYyZi00ZmMwLTg1ZmEtZDIwMDMxNTI2Y2Q0L1RoaW5rc3RvY2tQaG90b3MtNTg5OTU5MDEyLmpwZyJdLFsicCIsInRodW1iIiwiMTI0MHg2NDAjIl1d?basename=Should+Survivors+Hire+a+Private+Investigator%3F&sha=fae7f63de50252f4')




b = Booking.create!(start_date: '3.12.2019', target_name: 'David', target_address: 'Ben Yehuda, Tel Aviv', unit: unit1, user_id: user.id)
b = Booking.create!(start_date: '11.11.2019', target_name: 'Ben', target_address: 'Tel Aviv-Yafo', unit: unit2, user_id: user.id)
b = Booking.create!(start_date: '11.12.2019', target_name: 'Clara', target_address: 'Rothschild, Tel Aviv', unit: unit3, user_id: user.id)
b = Booking.create!(start_date: '18.12.2019', target_name: 'Joy', target_address: 'Florentin Tel Aviv', unit: unit4, user_id: user.id)
b = Booking.create!(start_date: '24.12.2019', target_name: 'Rabea', target_address: 'Jaffa Tel Aviv', unit: unit5, user_id: user.id)
