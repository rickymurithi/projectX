# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.create(name: "Toy", description: "Kids-toy", price: 1)

Review.create(product_id: 1, user_id: 2, name: "Ian", description: "Cool")

User.create(username: "test", password: "test")