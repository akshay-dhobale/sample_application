# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
brand = "asus"
for i in (0..100) do
  product = 'prod_#{i}'
  Product.create!(name: product, brand:brand, year:'2018', model:'model_1', ram: '8')
end


brand = "hp"
for i in (101..200) do
  product = 'prod_#{i}'
  Product.create!(name: product, brand:brand, year:'2018', model:'model_1', ram: '8')
end
