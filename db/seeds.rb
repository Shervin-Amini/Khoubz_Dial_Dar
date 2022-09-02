# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p "Deleting old seed"
User.destroy_all

p "starting seed"
User.create(email: "seller1@seller.com", name: "Adam", phone_number: 0, password: "123456", is_seller: true)
User.create(email: "seller2@seller.com", name: "Oumaima", phone_number: 0, password: "123456", is_seller: true)
User.create(email: "seller3@seller.com", name: "Shervin", phone_number: 0, password: "123456", is_seller: true)

Product.create(name: "Pain de mie", description: "Pain moelleux sucré aux céréales avec mie moelleuse", price: 12, seller_id: 1)
Product.create(name: "Baguette tradition", description: "Préparé  sans additif avec de la farine de blé, de l’eau, du sel et de la levure ", price: 8.5, seller_id: 1)

Product.create(name: "Pain de mie", description: "Farine, sel, huile, oeuf", price: 4, seller_id: 2)
Product.create(name: "Baguette tradition", description: "Farine, sel, huile, oeuf", price: 3.5, seller_id: 2 )
Product.create(name: "Pain moelleux", description: "Préparé sans additif avec de la farine de blé bio", price: 10, seller_id: 2)
Product.create(name: "Pain bio", description: "Pain bio avec un mélange de farine de blé et de seigle", price: 14, seller_id: 2)

Product.create(name: "Pain de mie", description: "Farine, sel, huile, oeuf", price: 4, seller_id: 3)
Product.create(name: "Baguette tradition", description: "Farine, sel, huile, oeuf", price: 3.5, seller_id: 3 )
Product.create(name: "Pain moelleux", description: "Préparé sans additif avec de la farine de blé bio", price: 17, seller_id: 3)
Product.create(name: "Pain bio", description: "Pain bio avec un mélange de farine de blé et de seigle", price: 14, seller_id: 3)



p "seeding end"
