# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Category.create!(
  name: "rails tutorial",
  description: "self study rails tutorial"
)

Todo.create!(
  name: "phase 1",
  description: "zero to deploy",
  category_id: 1
)

Todo.create!(
  name: "phase 2",
  description: "Toy Application",
  category_id: 1
)