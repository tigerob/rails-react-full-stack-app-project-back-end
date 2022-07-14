# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if User.count == 0
    User.create(username: "Don", email: "Don@email.com", password: "1234", password_confirmation: "1234", is_admin: true)
    User.create(username: "Tiger", email: "tiger@email.com", password: "1234", password_confirmation: "1234", is_admin: true)
end

if Booking.count == 0
    Booking.create(time: 1300, date: "Monday", instrument: "piano", user_id: 1 )
    Booking.create(time: 1200, date: "Wednesday", instrument: "guitar",  user_id: 2)
    Booking.create(time: 1000, date: "Friday",  instrument: "piano",  user_id: 2)
end
