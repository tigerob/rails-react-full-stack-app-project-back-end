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

if Price.count == 0
    Price.create(instrument: "guitar", price: 100000)
    Price.create(instrument: "piano", price: 150000)
    Price.create(instrument: "singing", price: 80000)
end

if Booking.count == 0
    Booking.create!(time: "10:00 PM", date: "Monday", location: "studio", instrument: "piano", user_id: 1, username: "Don")
    Booking.create!(time: "12:00 PM", date: "Wednesday", location: "studio", instrument: "guitar",  user_id: 2, username: "Don")
    Booking.create!(time: "08:00 AM", date: "Friday", location: "studio",  instrument: "piano",  user_id: 2, username: "Tiger")
end
