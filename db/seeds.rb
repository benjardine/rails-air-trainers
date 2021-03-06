# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# @training_session.user
# @training_session.trainer
# @training_session.customer
puts "Droppting old tables"
TrainingSession.destroy_all
User.destroy_all


puts "Creating a trainer"
jessica = User.create!(name: "Jessica", email:"fitfreak@gmail.com", password:"password", phone_number: "07866372818")

puts "Creating another trainer"
joe = User.create!(name: "Joe Trainer", email:"traioner@gmail.com", password:"passwrd", phone_number: "07866372999")

puts "Creating a session"
session = TrainingSession.new(category: "Yoga", cost: 25, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", start_time: DateTime.new(2020,11,21,7,0,0), end_time: DateTime.new(2020,11,21,8,0,0),date: DateTime.new(2020,11,21), address: "Highbury Park")
session.trainer = joe
session.save!

puts "Creating a second session"
boxing_session = TrainingSession.new(category: "Boxing", cost: 20, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", start_time: DateTime.new(2020,11,22,7,0,0), end_time: DateTime.new(2020,11,22,8,0,0),date: DateTime.new(2020,11,21), address: "Angel")
boxing_session.trainer = jessica
boxing_session.save!

puts "Creating a booking"
boxing_booking = Booking.new(customer: joe, training_session: boxing_session)
boxing_booking.save!

