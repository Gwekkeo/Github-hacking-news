require 'faker'

puts "Ajout user dans table"
10.times do
 	User.create(name: Faker::DrWho.actor)
end

puts "Ajout lien table"
10.times do
 	Link.create(title: Faker::Color.color_name, url: Faker::Internet.url)
end

puts "Ajout contenu comments"
5.times do
	Comment.create(content: Faker::ChuckNorris.fact)
end

puts "Ajout contenu subcomments"
12.times do
	Subcomment.create(content: Faker::Food.description)
end

puts "Ajout id dans comments"
5.times do |i|
	Comment.find(i+1).update(user_id: rand(1..10))
end

puts "Ajout id dans link"
10.times do |i|
	Link.find(i+1).update(user_id: rand(1..10))
end

puts "Ajout id dans subcomments"
12.times do |i|
	Subcomment.find(i+1).update(comment_id: rand(1..10))
end
