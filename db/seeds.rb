# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users_attributes = [
        { username: 'test1',
          password: '123456',
          password_confirmation: '123456',
          email: Faker::Internet.email
        },
        { username: 'test2',
          password: '123456',
          password_confirmation: '123456',
          email: Faker::Internet.email
        },
        {
          username: 'test3',
          password: '123456',
          password_confirmation: '123456',
          email: Faker::Internet.email
        }]
users_attributes.each { |user| User.create(user) }

spaces = [
           { name: 'Eclat Creative',
             description: "Eclat Creative is very pleased to offer two permanent residency opportunities! The two secure 12m2 offices are bound by bright white bricks and carpeted, with built-in storage and are large enough for several desks and your designer elements. As an Eclat Creative resident you will have 24/7 access to your office and unlimited access to the studio facilities outside of regular bookings. This presents an exceptional opportunity for a local photographer, blogger or content developer located in the inner West to align their business with a well-established and fully-fitted, professional photography studio! Everything you need is right here and ready to go! Let's discuss Eclat Creative becoming your new HQ!",
             max_capacity: (1..20).to_a.sample*10,
             price_per_day: (30..90).to_a.sample*10,
             user_id: (1..3).to_a.sample,
             address: ['Berlin', 'Paris', 'London', 'Budapest'].sample,
             category: ['office', 'creative', 'meeting', 'event', 'retail'].sample
           },
           { name: 'The Cowork Gallery',
             description: "Conceived by partners Nicholas Sammut, MD and ECD of Toast Creative, and Abraham Mikhail, Founder of Fone King, The co-work gallery is built on values of innovation, wellbeing and collaboration: a genuine combination of lifestyle benefits embedded in a co-working space philosophy.Workspaces are designed to balance creativity and business efficiency. Regular curated events nurture and grow the community. Members benefit from the proximity to the central business district as well as the vibrancy of Surry Hills’ cultural hub.",
             max_capacity: (1..20).to_a.sample*10,
             price_per_day: (30..90).to_a.sample*10,
             user_id: (1..3).to_a.sample,
             address: ['Berlin', 'Paris', 'London', 'Budapest'].sample,
             category: ['office', 'creative', 'meeting', 'event', 'retail'].sample
           },
           { name: "Blank Space",
             description: "BlankSpace offers 24/7 secure access, fibre internet and kitchen facilities with tea and coffee provided, as well as a projector, table tennis table, meeting area and studio backdrops for film and video. The studio has a modern loft feel with high ceilings and natural light. BlankSpace is also a pet-friendly space.",
             max_capacity: (1..20).to_a.sample*10,
             price_per_day: (30..90).to_a.sample*10,
             user_id: (1..3).to_a.sample,
             address: ['Berlin', 'Paris', 'London', 'Budapest'].sample,
             category: ['office', 'creative', 'meeting', 'event', 'retail'].sample
           },
           { name: "The Henley Club",
             description: "Henley Club is a members' social club, conveniently located in the heart of the CBD. The space is available for hire until 5pm, 7 days a week. It has a rustic 'cabin' feel and is perfect for workshops, off-site meetings and small get-togethers of up to 20 people.",
             max_capacity: (1..20).to_a.sample*10,
             price_per_day: (30..90).to_a.sample*10,
             user_id: (1..3).to_a.sample,
             address: ['Berlin', 'Paris', 'London', 'Budapest'].sample,
             category: ['office', 'creative', 'meeting', 'event', 'retail'].sample
           },
           { name: "Multi-use area at Indigo Project",
             description: "We are opening up our beautiful sunlit converted warehouse space to events and short-term hires. Nestled on the second floor of The Indigo Project psychology and creative hub, this exciting space is now available for hire. A former 1800s corset factory, stretching to 150sqm with exposed beams and woodgrain floors, this is a rare urban haven just two minutes walk from Central Station. ",
             max_capacity: (1..20).to_a.sample*10,
             price_per_day: (30..90).to_a.sample*10,
             user_id: (1..3).to_a.sample,
             address: ['Berlin', 'Paris', 'London', 'Budapest'].sample,
             category: ['office', 'creative', 'meeting', 'event', 'retail'].sample
           },
           { name: "Event space 99",
             description: "Event space 99 space has played host to many exciting meet-ups, workshops, strategy kick off sessions and client functions. ",
             max_capacity: (1..20).to_a.sample*10,
             price_per_day: (30..90).to_a.sample*10,
             user_id: (1..3).to_a.sample,
             address: ['Berlin', 'Paris', 'London'].sample,
             category: ['office', 'creative', 'meeting', 'event', 'retail'].sample
           },
           { name: "Blush Creative",
             description: "Suitable for: beauty room, office for a team of 4-6 people, medical/consulting room, healing/spiritual therapies, botox, cosmetic injectors, meeting room, treatment room, graphic design, small workshops, small training room, beauticians, makeup artists, massage therapists, tattoo artists, eyebrow tattooing, chiropractors, creative suite and lots more.",
             max_capacity: (1..20).to_a.sample*10,
             price_per_day: (30..90).to_a.sample*10,
             user_id: (1..3).to_a.sample,
             address: ['Berlin', 'Paris', 'London', 'Budapest'].sample,
             category: ['office', 'creative', 'meeting', 'event', 'retail'].sample
           },
           { name: "Sunshine club",
             description: "Beautiful recently-renovated light-filled room with a large window, white walls and floor tiles. Room does not have a sink but there is one close by. Signage in the window may be available for long-term tenants (subject to approval).",
             max_capacity: (1..20).to_a.sample*10,
             price_per_day: (30..90).to_a.sample*10,
             user_id: (1..3).to_a.sample,
             address: ['Berlin', 'Paris', 'London', 'Budapest'].sample,
             category: ['office', 'creative', 'meeting', 'event', 'retail'].sample
           },
           { name: "Manufactory Community",
             description: "If you need a professional space to present your ideas or hold creative workshops, we have light-filled meeting rooms, fully-equipped with audio visual system for groups up to 12 people. WiFi and self-serve coffee station available.",
             max_capacity: (1..20).to_a.sample*10,
             price_per_day: (30..90).to_a.sample*10,
             user_id: (1..3).to_a.sample,
             address: ['Berlin', 'Paris', 'London', 'Budapest'].sample,
             category: ['office', 'creative', 'meeting', 'event', 'retail'].sample
           },
           { name: "Hacker Space",
             description: "Hacker Space is a co-working space created by Artisan, a recruitment agency established 19 years ago with a strong reputation for outstanding creative services to the creative industry. In a large and light-filled building we offer a flexible range of memberships for creative freelancers and entrepreneurs to co-work.",
             max_capacity: (1..20).to_a.sample*10,
             price_per_day: (30..90).to_a.sample*10,
             user_id: (1..3).to_a.sample,
             address: ['Berlin', 'Paris', 'London', 'Budapest'].sample,
             category: ['office', 'creative', 'meeting', 'event', 'retail'].sample
           }
          ]

photo_urls = [
       [
          'http://thespaces.com/wp-content/uploads/2017/02/electroposive-NYC-coworking-space.jpg',
          'https://remote.co/wp-content/uploads/2016/06/coworking_space.png',
          'http://www.societyworkspace.com/wp-content/uploads/2014/07/Society-Co-Working-Phoenix-Downtown-1-2-1024x799.jpg'
       ],
       [
          'http://assets.inhabitat.com/wp-content/blogs.dir/1/files/2016/09/Montreal-Crew-coworking-space-by-Henri-Cleinge-6.jpg',
          'http://thespaces.com/wp-content/uploads/2015/04/Gallery_Small-1.jpg',
          'http://www.sohohouse.com/system/files/062015/557ae51bf7c88b20be000001/xlarge/Copyright_SohoHouseIstanbul_F5_2.jpg?1434117788'
       ],
       [
          'https://www.sohohouse.com/system/files/072015/55a4fee3f7c88b88e4000050/xlarge/Interior_4_152-for_web.jpg?1436876522',
          'https://www.sohohousewh.com/system/files/012016/569e747ef7c88b1651000026/xlarge/CopyrightSohoHouse_WestHollywood_13.jpg?1453225129',
          'https://www.sohohousechicago.com/system/files/082014/53e3f33ff942615ae400006b/xlarge/063676_002.jpg?1424778289'
       ],
       [
          'https://www.sohohouse.com/system/files/052015/555c6815f7c88bfeaa00015d/xlarge/SoHoChi_075_copy123.jpg?1453979990',
          'https://www.sohohouse.com/system/files/032015/54f83b26f7c88bc2100001c1/xlarge/30_10_14_barber_and_parlour_9654final.jpg?1427294352',
          'https://thespaces.com/wp-content/uploads/2017/04/London-coworking-space-Campus_London_03.jpg'
       ],
       [
          'https://www.sohohousewh.com/system/files/012016/569e7648f7c88b16510000d4/xlarge/CopyrightSohoHouse_WestHollywood_22.jpg?1453225548',
          'https://www.sohohousebarcelona.com/system/files/102016/580ddf8df7c88b4078000e85/xlarge/SOHO_HOUSE_BCN_1_0189.jpg?1477470093',
          'https://www.sohohousebarcelona.com/system/files/102016/580df5eff7c88b4078000f32/xlarge/Copyright_SohoHouseBarcelona_2016Launch_28.jpg?1477468514'
       ],
       [
          'https://www.sohohouseny.com/system/files/062017/59459748f7c88b99e0000029/xlarge/170512_004.jpg?1497733151',
          'https://www.sohohousewh.com/system/files/012016/569e8872f7c88b16510002d9/xlarge/CopyrightSohoHouse_Luckman01_copy.jpg?1453230201',
          'https://www.sohohousebarcelona.com/system/files/102016/580df5eff7c88b4078000f33/xlarge/Copyright_SohoHouseBarcelona_2016Launch_29.jpg?1477311947'
       ],
       [
          'https://www.sohohousechicago.com/system/files/012015/54ad54d5f942612c40000008/xlarge/063676_094.jpg?1424778374',
          'https://www.sohohouse.com/system/files/032015/54fd74eaf7c88beb6a0000c4/square/Unknown.jpeg.jpg?1434626779',
          'https://www.sohohouseistanbul.com/system/files/032015/54fc24fdf7c88b8c750004a0/xlarge/Copyright_SohoHouseIstanbul_E3.jpg?1426087626'
       ],
       [
          'https://www.sohohouseistanbul.com/system/files/072015/55b7b25ef7c88bfae2000007/xlarge/Img4869.jpg?1438102396',
          'http://blog.recruitloop.com/wp-content/uploads/2017/07/29362691060_9fa3ca1dea_b_Runway-coworking-space.jpg',
          'https://cdn0.tnwcdn.com/wp-content/blogs.dir/1/files/2013/06/20130604-Fueled-5309-2571738703-O.jpg'
       ],
       [
          'http://assets.inhabitat.com/wp-content/blogs.dir/1/files/2016/09/Montreal-Crew-coworking-space-by-Henri-Cleinge-4.jpg',
          'https://www.sohohousewh.com/system/files/012016/569fb3dcf7c88b16510009ec/xlarge/CopyrightSohoHouse_Luckman11_1_.jpg?1453306849',
          'https://www.sohohousewh.com/system/files/012016/569e748cf7c88b1651000027/xlarge/CopyrightSohoHouse_WestHollywood_12.jpg?1453225131'
       ],
       [
          'http://careers.sohohouse.com/system/files/122015/56681193ebeeb502d900000a/header_lg/Copyright_Soho_Farm_House_Main%20Barn%2004.jpg?1449660819',
          'https://thespaces.com/wp-content/uploads/2017/04/London-coworking-spaces.jpg',
          'https://www.officelovin.com/wp-content/uploads/2015/08/tribes-coworking-space-5.jpg'
       ]
       ]

spaces.each_with_index do |space, index|
  space = Space.create(space)
  space.photo_urls = photo_urls[index]
end

bookings_attributes = [
           {
              start_date: Time.parse("01-01-2017"),
              end_date: Time.parse("11-01-2017"),
              status: 'accepted',
              space_id: (1..10).to_a.sample,
              user_id: (1..5).to_a.sample
           },
           {
              start_date: Time.parse("01-02-2017"),
              end_date: Time.parse("11-02-2017"),
              status: 'pending',
              space_id: (1..10).to_a.sample,
              user_id: (1..5).to_a.sample
           },
           {
              start_date: Time.parse("01-03-2017"),
              end_date: Time.parse("11-03-2017"),
              status: 'declined',
              space_id: (1..10).to_a.sample,
              user_id: (1..5).to_a.sample
           }]

bookings_attributes.each do |b|
  Booking.create(b)
end
