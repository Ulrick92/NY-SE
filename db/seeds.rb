# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Transaction.delete_all
Sock.delete_all
User.delete_all
puts "Users and Socks and transactions deleted"


michel = User.create!(
  email: "michel@michel.com",
  password: "password"
)


puts 'user created'

a = Sock.new(
  title: 'Nike noire',
  description: 'Nike noire gauche',
  size: 42,
  price_per_day: 4,
  shipping_method: 'domicile',
  color: 'black',
  cleanliness: 5,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526994888/thought-catalog-470985-unsplash.jpg',
  user_id: 1,
  location: "16 rue villa Gaudelet, Paris"
)
a.user = michel
a.save!

b = Sock.new(
  title: 'Nike grise',
  description: 'Nike noire droite',
  size: 42,
  price_per_day: 4,
  shipping_method: 'domicile',
  color: 'green',
  cleanliness: 5,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526994889/yasin-hosgor-459740-unsplash.jpg',
  user_id: 1,
  location: "14 rue Crespin du Gast, Paris"
)
b.user = michel
b.save!

c = Sock.new(
  title: 'Nike blanche',
  description: 'Nike blanche droite',
  size: 43,
  price_per_day: 5,
  shipping_method: 'domicile',
  color: 'red',
  cleanliness: 5,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526999126/jstzei2rn7dl9itsir0i.jpg',
  user_id: 1,
  location: "95 rue Oberkampf, Paris"
)
c.user = michel
c.save!

d = Sock.new(
  title: 'Adidas blanche',
  description: 'Adidas blanche droite',
  size: 45,
  price_per_day: 10,
  shipping_method: 'domicile',
  color: 'white',
  cleanliness: 2,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526999040/xpcbu3qdzdgtrd1ki6s3.jpg',
  user_id: 1,
  location: "32 rue Saint-Maur, Paris"
)
d.user = michel
d.save!

e = Sock.new(
  title: 'Puma blanche',
  description: 'Puma blanche droite',
  size: 41,
  price_per_day: 8,
  shipping_method: 'domicile',
  color: 'blue',
  cleanliness: 7,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526998981/e90b6dl3rbteoid74m0x.jpg',
  user_id: 1,
  location: "78 rue Parmentier, Paris"
)
e.user = michel
e.save!

f = Sock.new(
  title: 'Adidas Noire',
  description: 'Adidas noire droite',
  size: 43,
  price_per_day: 4,
  shipping_method: 'domicile',
  color: 'gray',
  cleanliness: 10,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526994888/thought-catalog-470985-unsplash.jpg',
  user_id: 1,
  location: "55 avenue de la République, Paris"
)
f.user = michel
f.save!

puts 'created Socks'

