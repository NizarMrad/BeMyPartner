# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# sectors = Sector.create([{ name: 'Agroalimentaire' }, { name: 'Artisanat' }, { name: 'Beauté' }, { name: 'Chimie' }, { name: 'Commerce' }, { name: 'Communication, marketing' }, { name: 'Culture, sports, loisirs' }, { name: 'Energie' }, { name: 'Enseignement, formation' }, { name: 'Environnement' }, { name: 'Hôtellerie, restauration, tourisme' }, { name: 'Informatique' }, { name: 'Juridique' },{ name: 'Logistique, transport' }, { name: 'Mode' },{ name: 'Ressources humaines' }, { name: 'Santé' }, { name: 'Services aux entreprises' },  { name: 'Services financiers' }])
password = 'pass123'
1.upto(5) do |i|
  User.create(
    email: "user-#{i}@example.com",
    password: password,
    password_confirmation: password
  )
end
