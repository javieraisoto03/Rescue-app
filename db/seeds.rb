# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

50.times do |i|
    Pet.create(
       nombre: Faker::Food.allergen,
       apodo: Faker::Food.sushi,
       fecha: Faker::Date.backward(days: 14),
       imagen: Faker::Color.color_name,
       descripcion: Faker::Quote.matz,
       user_id: "#{i}"       
       )
end

