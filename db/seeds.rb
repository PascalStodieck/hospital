# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "doctor.destroy_all"

Doctor.destroy_all

puts "create doc"
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

  puts "create edu."

  2.times do
    education = Education.new(
      university: Faker::University.name,
      degree_name: Faker::Educator.degree,
      score: Faker::Number.between(from: 70, to: 100),
      doctor: Doctor.all.sample
    )
  education.save! # Remove this line
end

puts "destroy patient"

Patient.destroy_all

puts "create patient"
5.times do
  patient = Patient.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    insurance: ['Private', 'Public'].sample,
    cured: Faker::Boolean.boolean
  )
  patient.save!
end
