# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Booking is the scaffold name

welcome = Booking.where(title: 'Welcome').first
welcome.delete if welcome

bookings = Booking.create([title: 'Welcome', description: 'To the booking system.'])
