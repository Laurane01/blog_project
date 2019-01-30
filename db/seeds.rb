# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

users = User.create!([{ first_name: "Enzo", last_name: "DC", email: "enzodc@gmail.com" }, { first_name: "Leo", last_name: "ded", email: "leoladed@gmail.com"
}, { first_name: "Thomas", last_name: "c", email: "thomasc@gmail.com" }, { first_name: "Mallau", last_name: "yo", email: "mallauyo@gmail.com" }, { first_name: "Max", last_name: "sl", email: "maxsl@gmail.com" }, { first_name: "Thomas", last_name: "le", email: "thomasle@gmail.com" }, { first_name: "Adri", last_name: "heu", email: "adriheu@gmail.com" }, { first_name: "Julien", last_name: "malinois", email: "julienmalinois@gmail.com" }, { first_name: "Marion", last_name: "thp", email: "marionthp@gmail.com" }, { first_name: "Raph", last_name: "thpp", email: "raphthpp@gmail.com" }])
Article.create!(title: "Bienvenue chez THP", content: "On galere", user: User.find(rand(1..10)))
Article.create!(title: "Aujourdhui cest on Rails", content: "Et demain aussi", user: User.find(rand(1..10)))
Article.create!(title: "La petite maison dans la prairie", content: "Et cest la chute", user: User.find(rand(1..10)))
Article.create!(title: "Stars Wars", content: "Je suis ton pere", user: User.find(rand(1..10)))
Article.create!(title: "Pulp fiction", content: "Cheeseburger", user: User.find(rand(1..10)))
Article.create!(title: "Vol au dessus dun nid de coucou", content: "On sevade", user: User.find(rand(1..10)))
Article.create!(title: "Good morning England", content: "Rocknroll baby", user: User.find(rand(1..10)))
Article.create!(title: "American Psycho", content: "Bon appetit", user: User.find(rand(1..10)))
Article.create!(title: "American Beauty", content: "des petales de rose", user: User.find(rand(1..10)))
Article.create!(title: "Hello", content: "World", user: User.find(rand(1..10)))

5.times do
categories = Category.create!(name: Faker::ProgrammingLanguage.name)
end 

categories = Category.create!([{ name: "Premiere", Article.find(rand(1..10)) }, { name: "Deuxieme", Article.find(rand(1..10)) }, {name: "Troisieme", Article.find(rand(1..10)) }, {name: "Quatrieme", Article.find(rand(1..10)) }, {name: "Cinquieme", Article.find(rand(1..10)) } ])