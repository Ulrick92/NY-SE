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
  price: 4,
  shipping_method: 'domicile',
  color: 'Noire',
  cleanliness: 5,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526994888/thought-catalog-470985-unsplash.jpg'
)
a.user = michel
a.save

b = Sock.new(
  title: 'Nike grise',
  description: 'Nike noire droite',
  size: 42,
  price: 4,
  shipping_method: 'domicile',
  color: 'Noire',
  cleanliness: 5,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526994889/yasin-hosgor-459740-unsplash.jpg'
)
b.user = michel
b.save

c = Sock.new(
  title: 'Nike blanche',
  description: 'Nike blanche droite',
  size: 43,
  price: 5,
  shipping_method: 'domicile',
  color: 'Blanche',
  cleanliness: 5,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526999126/jstzei2rn7dl9itsir0i.jpg'
)
c.user = michel

d = Sock.new(
  title: 'Adidas blanche',
  description: 'Adidas blanche droite',
  size: 45,
  price: 10,
  shipping_method: 'domicile',
  color: 'Blanche',
  cleanliness: 2,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526999040/xpcbu3qdzdgtrd1ki6s3.jpg'
)
d.user = michel
d.save

e = Sock.new(
  title: 'Puma blanche',
  description: 'Puma blanche droite',
  size: 41,
  price: 8,
  shipping_method: 'domicile',
  color: 'Blanche',
  cleanliness: 7,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526998981/e90b6dl3rbteoid74m0x.jpg'
)
e.user = michel
e.save

f = Sock.new(
  title: 'Adidas Noire',
  description: 'Adidas noire droite',
  size: 43,
  price: 4,
  shipping_method: 'domicile',
  color: 'noire',
  cleanliness: 10,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526994888/thought-catalog-470985-unsplash.jpg'
)
f.user = michel
f.save

puts 'created Socks'

