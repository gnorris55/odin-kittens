
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Kitten.destroy_all

Kitten.create(name: "Clarence", age: "1", cuteness_scale: 8, softness_scale: 10)
Kitten.create(name: "Bits", age: "1", cuteness_scale: 10, softness_scale: 5)
Kitten.create(name: "Somecat", age: "12", cuteness_scale: -2, softness_scale: 3)

p "#{Kitten.count} kittens created"
