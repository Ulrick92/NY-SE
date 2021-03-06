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
  first_name: "Michel",
  last_name: "Dupont",
  email: "michel@michel.com",
  password: "password",
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1527254863/IMG_2739_NB_retouche%CC%81_Rond.jpg',
)

jack = User.create!(
  first_name: "Jack",
  last_name: "Clinton",
  email: "jack@jack.com",
  password: "password2",
  remote_photo_url: 'http://res.cloudinary.com/dp4vga3rz/image/upload/v1527254878/InvestInReims.jpg',
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
  user_id: 2,
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
  user_id: 2,
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
  user_id: 2,
  location: "3535 Angus Road, New York"
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
  user_id: 2,
  location: "26 Guild Street, London"
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
  user_id: 2,
  location: "Bodestraße 1-3, Berlin"
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
  user_id: 2,
  location: "Arendalsgata 16, Oslo"
)
f.user = michel
f.save!

puts 'created Socks'

