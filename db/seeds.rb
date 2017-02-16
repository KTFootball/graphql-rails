# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def random_str
  (0...50).map { ('a'..'z').to_a[rand(26)] }.join
end

10.times do 
  author = Author.create(name: random_str[0..4])
  3.times do
    author.blogs.create(title: random_str[0..9], content: random_str)
  end
end