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

puts "creating fake data"

User.create(name: "Jacque", email:"fitnessfreak.com", password:"password", phone_number: "07866372818")

TrainingSession.create(category: "Yoga", cost: 25, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", start_time: DateTime.new(2020,11,21,7,0,0), end_time: DateTime.new(2020,11,21,8,0,0),date: DateTime.new(2020,11,21), trainer_id: 1 )
