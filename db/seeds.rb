# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Doctor.destroy_all

5.times do
  doctor = Doctor.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    title: ["Prof", "Dr"].sample,
    available: Faker::Boolean.boolean,
    specialty: ["Dermatologist", "Pneumologist", "Cardiolgist", "Dentist", "GP"].sample,
    experience: Faker::Number.between(from: 2, to: 6)
  )
  doctor.save!
end
