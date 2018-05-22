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
  photo: 'thought-catalog-470985-unsplash',
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
  photo: 'yasin-hosgor-459740-unsplash',
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
  photo: 'thought-catalog-462302-unsplash',
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
  photo: 'clem-onojeghuo-366239-unsplash',
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
  photo: 'devin-avery-553496-unsplash',
  user_id: 1
)

f = Sock.new(
  title: 'Adidas Noire',
  description: 'Adidas noire droite',
  size: 43,
  price: 4,
  shipping_method: 'domicile',
  color: 'noire',
  cleanliness: 10,
  photo: 'dmitriy-ilkevich-435759-unsplash',
  user_id: 1
)
f.save

puts 'created Socks'

