# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do
  users = [
        { name: Faker::Name.name,
          role: ['guest', 'host'].sample,
          email: Faker::Internet.email
        }]
  User.create!(users)
end

10.times do
  spaces = [
           { name: Faker::Company.name,
             description: Faker::Lorem.sentence,
             max_capacity: (10..50).to_a.sample,
             price_per_day: (500..1000).to_a.sample,
             user_id: (1..5).to_a.sample
           }]
  Space.create!(spaces)
end

bookings = [
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

bookings.each do |b|
  Booking.create!(b)
end
