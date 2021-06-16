# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


50.times do 
    user = User.create({username: Faker::Internet.username, email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8, max_length: 20)})
    user.posts.create({title: Faker::Book.title, content: Faker::Lorem.sentence, image_url: Faker::Avatar.image})
end