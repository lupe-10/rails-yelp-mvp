# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.firs
puts "creando seeds"
Restaurant.create(name: "pepe", address: "palermo", category: "french", phone_number: "617-891-3457")
Restaurant.create(name: "carbon", address: "NYC", category: "italian", phone_number: "618-893-3497")
Restaurant.create(name: "Raku", address: "East Village", category: "japanese", phone_number: "212-871-3458")
Restaurant.create(name: "Noodle Village", address: "China Town", category: "chinese", phone_number: "217-891-3457")
Restaurant.create(name: "Waffle House", address: "Upper East", category: "belgian", phone_number: "248-781-3457")