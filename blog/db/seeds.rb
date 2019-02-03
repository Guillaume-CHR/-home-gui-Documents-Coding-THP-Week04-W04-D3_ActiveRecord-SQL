# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'bundler'
Bundler.require

10.times do
	user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)			
end

5.times do
	category = Category.create(name: Faker::LordOfTheRings.location)			
end

10.times do
	post = Post.create(title: Faker::LordOfTheRings.character ,content: Faker::MostInterestingManInTheWorld.quote, user_id: User.all.sample.id,category_id: Category.all.sample.id)			
end

10.times do
	comment = Comment.create(content: Faker::Zelda.game, user_id: User.all.sample.id,post_id: Post.all.sample.id)			
end

15.times do
	like = Like.create(user_id: User.all.sample.id,post_id: Post.all.sample.id)			
end