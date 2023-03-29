# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times.each do
  Category.create!(
    name: Faker::Educator.university,
    description: Faker::Educator.degree
  )
end

30.times.each do
  Todo.create!(
    name: Faker::Educator.course_name,
    description: Faker::Educator.subject,
    category_id: rand(1..10)
  )
end