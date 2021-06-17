# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


categoria = ['Ciencias', 'Informatica', 'Mecanica', 'Electricidad', 'Electronica', 'Videos juegos', 'Economia']



50.times do 
    user = User.create({username: Faker::Internet.username, email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8, max_length: 20)})
    user.posts.create({title: Faker::Book.title, content: Faker::Lorem.sentence, image_url: Faker::Avatar.image, category: categoria[rand(7)]})
end

#categoria1 = Category.create({name: Faker::Book.genre})
#categoria2 = Category.create({name: Faker::Book.genre})
#categoria3 = Category.create({name: Faker::Book.genre})
#categoria4 = Category.create({name: Faker::Book.genre})
#categoria5 = Category.create({name: Faker::Book.genre})
#categoria6 = Category.create({name: Faker::Book.genre})
#categoria7 = Category.create({name: Faker::Book.genre})

#posts = Post.all

#categories = Category.all

#posts.each do |post|
#    categories.each do |categoria|
#        post.update(category: categoria)
#    end
#end