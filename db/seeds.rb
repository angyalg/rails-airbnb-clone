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
users_attributes.each { |user| User.create!(user) }


9.times do
  spaces = [
           { name: Faker::Company.name,
             description: Faker::Lorem.sentence,
             max_capacity: (1..20).to_a.sample*10,
             price_per_day: (30..90).to_a.sample*10,
             user_id: (1..5).to_a.sample,
             address: ['Berlin', 'Paris', 'London', 'Budapest'].sample,
             category: ['office', 'creative', 'meeting', 'event', 'retail'].sample
           }]
  Space.create!(spaces)
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
  Booking.create!(b)
end
