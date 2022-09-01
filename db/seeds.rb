# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p "starting seed"
User.create(email: "seller@seller.com", name: "sellermail:mdp123456", phone_number: 0, password: "123456", is_seller: true)

10.times do
  Product.create(name: "Khobza", description: "Farine, sel, huile, oeuf", price: 4, seller_id: 3)
end
p "seeding end"
