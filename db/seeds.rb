# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

p "Deleting old seed"
Product.destroy_all
User.destroy_all

produits = ["https://images.unsplash.com/photo-1598373182308-3270495d2f58?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
 "https://images.unsplash.com/photo-1586765501019-cbe3973ef8fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1168&q=80",
  "https://images.unsplash.com/photo-1598373182133-52452f7691ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
  "https://i.pinimg.com/originals/af/61/e4/af61e478125eb6cc32f26ee4d7f284c3.jpg",
  "https://tasteofmaroc.com/wp-content/uploads/2017/08/batbout-2-edit2.jpg",
  "https://images.unsplash.com/photo-1579385935211-45b8cfdda570?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80",
  "https://images.unsplash.com/photo-1598373182133-52452f7691ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
  "https://astucesaufeminin.com/wp-content/uploads/2021/01/02-5.jpg",
  "https://www.pourquoidocteur.fr/media/article/ggl1200_istock-508489708-1557829184.jpg",
  "https://images.unsplash.com/photo-1572897306051-abf270479682?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"
]

photos = [
  "https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=644&q=80",
  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHdvbWFuJTIwcHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=761&q=80",
  "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
  "https://images.unsplash.com/photo-1567532939604-b6b5b0db2604?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1541271696563-3be2f555fc4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
  "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1544723795-3fb6469f5b39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=689&q=80",
  "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1564460576398-ef55d99548b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
  "https://images.unsplash.com/photo-1564564295391-7f24f26f568b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80"]

p "starting seed"

def addPhoto(model, photoArray, i)
  file = URI.open(photoArray[i-1])
  model.photo.attach(io: file, filename: "#{model.id}.png", content_type: "image/png")
  model.save
  p "saved model "
  p model.id
end

user1 = User.create(email: "adam@abe.com", name: "Adam", phone_number: "0610123456", password: "123456", is_seller: true)
addPhoto(user1, photos, 1 )
user2 = User.create(email: "oumaima@af.com", name: "Oumaima", phone_number: "0617896542", password: "123456", is_seller: false)
addPhoto(user2, photos, 2 )
user3 = User.create(email: "Ahmed@hassan.com", name: "Ahmed", phone_number: "0697896872", password: "123456", is_seller: true)
addPhoto(user3, photos, 3 )
user4 = User.create(email: "nassima@rhahi.com", name: "Nassima", phone_number: "0618759276", password: "123456", is_seller: true)
addPhoto(user4, photos, 4 )
user5 = User.create(email: "mohammed@jalal.com", name: "Mohammed", phone_number: "0645696742", password: "123456", is_seller: true)
addPhoto(user5, photos, 5 )
user6 = User.create(email: "Naima@elhassani.com", name: "Naima", phone_number: "0617896542", password: "123456", is_seller: true)
addPhoto(user6, photos, 6 )
user7 = User.create(email: "issa@darhoun.com", name: "Issa", phone_number: "0618766592", password: "123456", is_seller: true)
addPhoto(user7, photos, 7 )
user8 = User.create(email: "samira@maftioui.com", name: "Samira", phone_number: "0617990642", password: "123456", is_seller: true)
addPhoto(user8, photos, 8 )
user9 = User.create(email: "latifa@elghenna.com", name: "Latifa", phone_number: "0657891402", password: "123456", is_seller: true)
addPhoto(user9, photos, 9 )
user10 = User.create(email: "najib@lahlou.com", name: "Najib", phone_number: "0618845542", password: "123456", is_seller: true)
addPhoto(user10, photos, 10 )
user11 = User.create(email: "karim@ennajari.com", name: "Karim", phone_number: "0617490542", password: "123456", is_seller: true)
addPhoto(user11, photos, 11)

p1 = Product.create(name: "Pain de mie", description: "Pain moelleux sucré aux céréales avec mie moelleuse", price: 12, seller: user1)
addPhoto(p1 ,produits, 1 )
p2 = Product.create(name: "Baguette tradition", description: "Préparé  sans additif avec de la farine de blé, de l’eau, du sel et de la levure ", price: 8.5, seller: user10)
addPhoto(p2 ,produits, 2 )
p3 = Product.create(name: "Pain moelleux", description: "Farine, sel, huile, oeuf", price: 14, seller: user9)
addPhoto(p3 ,produits, 3 )
p4 = Product.create(name: "Baguette tradition", description: "Farine, sel, huile, oeuf", price: 1.5, seller: user4 )
addPhoto(p4 ,produits, 4 )
p5 = Product.create(name: "Batbout", description: "Recette traditionnelle préparée sans additif avec de la farine bio", price: 2.5, seller: user3)
addPhoto(p5 ,produits, 5 )
p6 = Product.create(name: "Pain bio au blé", description: "Pain bio avec un mélange de farine de blé et de seigle", price: 17, seller: user7)
addPhoto(p6 ,produits, 6 )
p7 = Product.create(name: "Pain de mie", description: "Farine, sel, huile, oeuf", price: 11, seller: user11)
addPhoto(p7 ,produits, 7 )
p8 = Product.create(name: "Baguette bio croustillante", description: "Farine, sel, huile, oeuf", price: 3.5, seller: user5 )
addPhoto(p8 ,produits, 8 )
p9 = Product.create(name: "Pain de seigle au levain", description: "Préparé avec un mélange bio de seigle et de levain", price: 14.5, seller: user8)
addPhoto(p9 ,produits, 9 )
p10 = Product.create(name: "Pain sucré aux raisins secs", description: "Pain bio avec un mélange de farine de bio et de raisins secs", price: 5, seller: user4)
addPhoto(p10,produits, 10)

all_status = ["Delivered", "Pending", "Undelivered"]
all_msgs = ["Sans gluten s'il vous plait",
            "Sans sel, très bien cuit, avec quelques grains de sesame",
            "Merci de faire le pain avec de la farine de sarrasin"]

24.times do
  Order.create!(
    status: all_status.sample,
    buyer: User.all.sample,
    product: Product.all.sample,
    quantity: (1..9).to_a.sample,
    customization_message: all_msgs.sample
  )
end
p "seeding end"
