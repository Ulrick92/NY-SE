# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = Sock.create!(
  title: 'Nike noire',
  description: 'Nike noire gauche',
  size: 42,
  price: 4,
  shipping_method: 'domicile',
  color: 'Noire',
  cleanliness: 5,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526994888/thought-catalog-470985-unsplash.jpg',
  user_id: 1
)

b = Sock.create!(
  title: 'Nike grise',
  description: 'Nike noire droite',
  size: 42,
  price: 4,
  shipping_method: 'domicile',
  color: 'Noire',
  cleanliness: 5,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526994889/yasin-hosgor-459740-unsplash.jpg',
  user_id: 1
)

c = Sock.create!(
  title: 'Nike blanche',
  description: 'Nike blanche droite',
  size: 43,
  price: 5,
  shipping_method: 'domicile',
  color: 'Blanche',
  cleanliness: 5,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526999126/jstzei2rn7dl9itsir0i.jpg',
  user_id: 1
)

d = Sock.create!(
  title: 'Adidas blanche',
  description: 'Adidas blanche droite',
  size: 45,
  price: 10,
  shipping_method: 'domicile',
  color: 'Blanche',
  cleanliness: 2,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526999040/xpcbu3qdzdgtrd1ki6s3.jpg',
  user_id: 1
)


e = Sock.create!(
  title: 'Puma blanche',
  description: 'Puma blanche droite',
  size: 41,
  price: 8,
  shipping_method: 'domicile',
  color: 'Blanche',
  cleanliness: 7,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526998981/e90b6dl3rbteoid74m0x.jpg',
  user_id: 1
)

f = Sock.create!(
  title: 'Adidas Noire',
  description: 'Adidas noire droite',
  size: 43,
  price: 4,
  shipping_method: 'domicile',
  color: 'noire',
  cleanliness: 10,
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1526994888/thought-catalog-470985-unsplash.jpg',
  user_id: 1
)

puts 'created Socks'

