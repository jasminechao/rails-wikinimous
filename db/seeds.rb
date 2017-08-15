# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all

def content
  result = ""
  5.times do
    result << Faker::Lorem.paragraph(2, true)
    result << "\n"
  end
  return result
end

10.times do
  article = Article.new(
    title: Faker::VentureBros.organization,
    content: content
  )
  article.save!
end


