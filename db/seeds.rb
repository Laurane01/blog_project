# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
#
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