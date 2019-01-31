# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
#
# require 'faker'

# users = User.create!([{ first_name: "Enzo", last_name: "DC", email: "enzodc@gmail.com" }, { first_name: "Leo", last_name: "ded", email: "leoladed@gmail.com"
# }, { first_name: "Thomas", last_name: "c", email: "thomasc@gmail.com" }, { first_name: "Mallau", last_name: "yo", email: "mallauyo@gmail.com" }, { first_name: "Max", last_name: "sl", email: "maxsl@gmail.com" }, { first_name: "Thomas", last_name: "le", email: "thomasle@gmail.com" }, { first_name: "Adri", last_name: "heu", email: "adriheu@gmail.com" }, { first_name: "Julien", last_name: "malinois", email: "julienmalinois@gmail.com" }, { first_name: "Marion", last_name: "thp", email: "marionthp@gmail.com" }, { first_name: "Raph", last_name: "thpp", email: "raphthpp@gmail.com" }])
# Article.create!(title: "Bienvenue chez THP", content: "On galere", user: User.find(rand(1..10)))
# Article.create!(title: "Aujourdhui cest on Rails", content: "Et demain aussi", user: User.find(rand(1..10)))
# Article.create!(title: "La petite maison dans la prairie", content: "Et cest la chute", user: User.find(rand(1..10)))
# Article.create!(title: "Stars Wars", content: "Je suis ton pere", user: User.find(rand(1..10)))
# Article.create!(title: "Pulp fiction", content: "Cheeseburger", user: User.find(rand(1..10)))
# Article.create!(title: "Vol au dessus dun nid de coucou", content: "On sevade", user: User.find(rand(1..10)))
# Article.create!(title: "Good morning England", content: "Rocknroll baby", user: User.find(rand(1..10)))
# Article.create!(title: "American Psycho", content: "Bon appetit", user: User.find(rand(1..10)))
# Article.create!(title: "American Beauty", content: "des petales de rose", user: User.find(rand(1..10)))
# Article.create!(title: "Hello", content: "World", user: User.find(rand(1..10)))

# 5.times do
# categories = Category.create!(name: Faker::ProgrammingLanguage.name)
# end 

# categories = Category.create!([{ name: "Premiere", Article.find(rand(1..10)) }, { name: "Deuxieme", Article.find(rand(1..10)) }, {name: "Troisieme", Article.find(rand(1..10)) }, {name: "Quatrieme", Article.find(rand(1..10)) }, {name: "Cinquieme", Article.find(rand(1..10)) } ])

require 'faker' # il faut installer la gem faker pour avoir les valeurs
10.times do |variable|
	user = User.create!(first_name: Faker::StarWars.character, last_name: Faker::StarWars.planet, email: Faker::StarWars.quote)
end
10.times do
	articles = Article.create!(title: Faker::HowIMetYourMother.character, content: Faker::StarWars.vehicle, user_id: User.order("RANDOM()").first.id) # cette fonction permet de fixer un seul id par article
end

5.times do
	categories = Category.create!(name: Faker::HowIMetYourMother.character, article_id: Article.order("RANDOM()").first.id) 
end 

15.times do
  comment = Comment.create!(content: Faker::StarWars.wookiee_sentence, user_id: User.order("RANDOM()").first.id, article_id: Article.order("RANDOM()").first.id)
end
15.times do
  like = Like.create!(user_id: User.order("RANDOM()").first.id, article_id: Article.order("RANDOM()").first.id)
end