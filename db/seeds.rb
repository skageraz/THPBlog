# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def category
  category_1 = Category.create(name: "animaux")
  category_2 = Category.create(name: "voitures")
  category_3 = Category.create(name: "pays")
  category_4 = Category.create(name: "economie")
  category_5 = Category.create(name: "bolos")

10.times do
  new_user = User.create(
    first_name: Faker::Name.first_name,
     last_name: Faker::Name.last_name,
      email: Faker::Internet.email
    )
  Article.create(
    title: Faker::Book.title,
    content: Faker::ChuckNorris.fact,
    user_id: new_user.id,
    category_id: rand(Category.first.id..Category.last.id)
  )
  end
end

def creation_random_comment
15.times do
  new_comment = Comment.create(
    content: Faker::BackToTheFuture.quote,
    user_id: rand(User.first.id..User.last.id),
    article_id: rand(Article.first.id..Article.last.id)
  )
  end
end

def create_likes
15.times do
  new_like = Like.create(
    user_id: rand(User.first.id..User.last.id),
    article_id: rand(Article.first.id..Article.last.id)
  )
  end
end

category
creation_random_comment
create_likes
