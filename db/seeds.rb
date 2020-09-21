# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# sectors = Sector.create([{ name: 'Agroalimentaire' }, { name: 'Artisanat' }, { name: 'Beauté' }, { name: 'Chimie' }, { name: 'Commerce' }, { name: 'Communication, marketing' }, { name: 'Culture, sports, loisirs' }, { name: 'Energie' }, { name: 'Enseignement, formation' }, { name: 'Environnement' }, { name: 'Hôtellerie, restauration, tourisme' }, { name: 'Informatique' }, { name: 'Juridique' },{ name: 'Logistique, transport' }, { name: 'Mode' },{ name: 'Ressources humaines' }, { name: 'Santé' }, { name: 'Services aux entreprises' },  { name: 'Services financiers' }])

require 'faker'

3.times do
  User.create(
    email: Faker::Internet.email(domain: 'yopmail.com'),
    password: Faker::Internet.password
  )
end

3.times do
  Profile.update(
    name: Faker::Name.first_name,
    skills: Faker::Job.key_skill,
    description: Faker::GreekPhilosophers.quote,
    city: Faker::Nation.capital_city,
    linkedin_url: Faker::Internet.domain_name,
    age: rand(16..125),
    user_id: rand(1..3)
  )
end

3.times do
  Article.create(
    title: Faker::Movie.title,
    content: Faker::Lorem.paragraphs(number: 3),
    user_id: rand(1..3)
  )
end

3.times do
  Project.create(
    title: Faker::Movie.title,
    description: Faker::Lorem.paragraphs(number: 3),
    user_id: rand(1..3),
    budget: rand(100..100_000),
    city: Faker::Address.city,
    profile_needed: Faker::Job.field
  )
end
